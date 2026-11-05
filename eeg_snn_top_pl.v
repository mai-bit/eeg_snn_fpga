
`timescale 1ns / 1ps


module eeg_pl_top #(
    parameter integer CLKS_PER_BIT = 1736,
    parameter integer HALF_CLKS    = 868
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        uart_rx,

    output wire [12:0] bram_addr,
    output reg  [31:0] bram_data,
    output reg  [3:0]  bram_we,

    output wire        td_matrix_ready,
    output wire        fd_matrix_ready
);

    // ========================================================
    // UART receiver
    // ========================================================

    wire [7:0] rx_byte;
    wire       rx_valid;

    uart_rx #(
        .CLKS_PER_BIT(CLKS_PER_BIT),
        .HALF_CLKS(HALF_CLKS)
    ) u_uart_rx (
        .clk   (clk),
        .rst_n (rst_n),
        .rx    (uart_rx),
        .data  (rx_byte),
        .valid (rx_valid)
    );

    // ========================================================
    // TGAM parser signals
    // ========================================================

    wire [15:0] rawdata;
    wire        rawdata_valid;

    wire [23:0] delta;
    wire [23:0] theta;
    wire [23:0] low_alpha;
    wire [23:0] high_alpha;
    wire [23:0] low_beta;
    wire [23:0] high_beta;
    wire [23:0] low_gamma;
    wire [23:0] middle_gamma;

    wire [7:0] attention;
    wire [7:0] meditation;
    wire [7:0] signal_quality;

    wire big_packet_valid;

    tgam_parser u_tgam_parser (
        .clk              (clk),
        .rst_n            (rst_n),

        .rx_byte          (rx_byte),
        .rx_valid         (rx_valid),

        .rawdata          (rawdata),
        .rawdata_valid    (rawdata_valid),

        .delta            (delta),
        .theta            (theta),
        .low_alpha        (low_alpha),
        .high_alpha       (high_alpha),
        .low_beta         (low_beta),
        .high_beta        (high_beta),
        .low_gamma        (low_gamma),
        .middle_gamma     (middle_gamma),

        .attention        (attention),
        .meditation       (meditation),
        .signal_quality   (signal_quality),

        .big_packet_valid (big_packet_valid)
    );

    // ========================================================
    // Goertzel + SNN: uses Raw EEG only, not TGAM power values.
    // Same clk/rst_n domain as the BRAM write FSM.
    // ========================================================
    wire [1:0] snn_class_id;
    wire       snn_class_valid;
    wire [6:0] theta_pct_dbg, alpha_pct_dbg, beta_pct_dbg;
    wire       feature_valid_dbg;

    goertzel_snn u_goertzel_snn (
        .clk(clk), .rst_n(rst_n),
        .raw_sample($signed(rawdata)),
        .sample_valid(rawdata_valid),
        .class_id(snn_class_id),
        .class_valid(snn_class_valid),
        .theta_pct(theta_pct_dbg),
        .alpha_pct(alpha_pct_dbg),
        .beta_pct(beta_pct_dbg),
        .feature_valid(feature_valid_dbg)
    );

    reg [1:0] snn_result_pending;
    reg       snn_result_pending_valid;
    reg [31:0] snn_result_seq;
    reg [10:0] bram_word_addr;
    assign bram_addr = {bram_word_addr, 2'b00};

    // ========================================================
    // BRAM write state machine
    // ========================================================

    localparam [3:0]
        ST_INIT = 4'd0,
        ST_IDLE = 4'd1,
        ST_RAW  = 4'd2,
        ST_PTR  = 4'd3,
        ST_B0   = 4'd4,
        ST_B1   = 4'd5,
        ST_B2   = 4'd6,
        ST_B3   = 4'd7,
        ST_B4   = 4'd8,
        ST_B5   = 4'd9,
        ST_B6   = 4'd10,
        ST_B7   = 4'd11,
        ST_STAT = 4'd12,
        ST_SNN_RESULT = 4'd13,
        ST_SNN_SEQ = 4'd14;

    reg [3:0] state;

    reg [15:0] write_seq;

    reg [15:0] raw_pending;
    reg        raw_pending_valid;

    reg [23:0] band_pending [0:7];

    reg [7:0] att_pending;
    reg [7:0] med_pending;
    reg [7:0] quality_pending;
    reg [7:0] status_seq;

    reg band_pending_valid;

    // ========================================================
    // Pending data registers
    // ========================================================

    always @(posedge clk or negedge rst_n) begin

        if (!rst_n) begin

            raw_pending        <= 16'd0;
            raw_pending_valid  <= 1'b0;

            band_pending_valid <= 1'b0;

            att_pending        <= 8'd0;
            med_pending        <= 8'd0;
            quality_pending    <= 8'd0;

            status_seq         <= 8'd0;
            snn_result_pending <= 2'd0;
            snn_result_pending_valid <= 1'b0;

            band_pending[0] <= 24'd0;
            band_pending[1] <= 24'd0;
            band_pending[2] <= 24'd0;
            band_pending[3] <= 24'd0;
            band_pending[4] <= 24'd0;
            band_pending[5] <= 24'd0;
            band_pending[6] <= 24'd0;
            band_pending[7] <= 24'd0;

        end else begin

            if (snn_class_valid) begin
                snn_result_pending <= snn_class_id;
                snn_result_pending_valid <= 1'b1;
            end

            if (rawdata_valid) begin
                raw_pending       <= rawdata;
                raw_pending_valid <= 1'b1;
            end

            if (big_packet_valid) begin

                band_pending[0] <= delta;
                band_pending[1] <= theta;
                band_pending[2] <= low_alpha;
                band_pending[3] <= high_alpha;
                band_pending[4] <= low_beta;
                band_pending[5] <= high_beta;
                band_pending[6] <= low_gamma;
                band_pending[7] <= middle_gamma;

                att_pending      <= attention;
                med_pending      <= meditation;
                quality_pending  <= signal_quality;

                band_pending_valid <= 1'b1;
                status_seq <= status_seq + 1'b1;

            end

            // Consume pending Raw sample
            if (state == ST_RAW)
                raw_pending_valid <= 1'b0;

            // Consume pending band packet
            if (state == ST_STAT)
                band_pending_valid <= 1'b0;

            if (state == ST_SNN_SEQ)
                snn_result_pending_valid <= 1'b0;

        end
    end

    // ========================================================
    // BRAM write controller
    // ========================================================

    always @(posedge clk or negedge rst_n) begin

        if (!rst_n) begin

            state     <= ST_INIT;
            write_seq <= 16'd0;
            snn_result_seq <= 32'd0;

            bram_word_addr <= 11'd0;
            bram_data <= 32'd0;
            bram_we   <= 4'b0000;

        end else begin

            // Default: no write
            bram_we <= 4'b0000;

            case (state)

                // --------------------------------------------
                // Initialize Producer
                // --------------------------------------------

                ST_INIT: begin

                    bram_word_addr <= 11'd1280;
                    bram_data <= 32'd0;
                    bram_we   <= 4'hF;

                    state <= ST_IDLE;

                end

                // --------------------------------------------
                // Wait for pending data
                // --------------------------------------------

                ST_IDLE: begin

                    if (raw_pending_valid)
                        state <= ST_RAW;

                    else if (band_pending_valid)
                        state <= ST_B0;

                    else if (snn_result_pending_valid)
                        state <= ST_SNN_RESULT;

                end

                // --------------------------------------------
                // Write Raw EEG sample
                // --------------------------------------------

                ST_RAW: begin

                    bram_word_addr <= 11'd256
                               + {1'b0, write_seq[9:0]};

                    // Sign extension
                    bram_data <= {
                        {16{raw_pending[15]}},
                        raw_pending
                    };

                    bram_we <= 4'hF;

                    state <= ST_PTR;

                end

                // --------------------------------------------
                // Update Producer
                // --------------------------------------------

                ST_PTR: begin

                    write_seq <= write_seq + 1'b1;

                    bram_word_addr <= 11'd1280;

                    bram_data <= {
                        16'd0,
                        write_seq + 16'd1
                    };

                    bram_we <= 4'hF;

                    state <= ST_IDLE;

                end

                // --------------------------------------------
                // Write EEG power bands
                // --------------------------------------------

                ST_B0: begin

                    bram_word_addr <= 11'd1281;
                    bram_data <= {8'd0, band_pending[0]};
                    bram_we   <= 4'hF;

                    state <= ST_B1;

                end

                ST_B1: begin

                    bram_word_addr <= 11'd1282;
                    bram_data <= {8'd0, band_pending[1]};
                    bram_we   <= 4'hF;

                    state <= ST_B2;

                end

                ST_B2: begin

                    bram_word_addr <= 11'd1283;
                    bram_data <= {8'd0, band_pending[2]};
                    bram_we   <= 4'hF;

                    state <= ST_B3;

                end

                ST_B3: begin

                    bram_word_addr <= 11'd1284;
                    bram_data <= {8'd0, band_pending[3]};
                    bram_we   <= 4'hF;

                    state <= ST_B4;

                end

                ST_B4: begin

                    bram_word_addr <= 11'd1285;
                    bram_data <= {8'd0, band_pending[4]};
                    bram_we   <= 4'hF;

                    state <= ST_B5;

                end

                ST_B5: begin

                    bram_word_addr <= 11'd1286;
                    bram_data <= {8'd0, band_pending[5]};
                    bram_we   <= 4'hF;

                    state <= ST_B6;

                end

                ST_B6: begin

                    bram_word_addr <= 11'd1287;
                    bram_data <= {8'd0, band_pending[6]};
                    bram_we   <= 4'hF;

                    state <= ST_B7;

                end

                ST_B7: begin

                    bram_word_addr <= 11'd1288;
                    bram_data <= {8'd0, band_pending[7]};
                    bram_we   <= 4'hF;

                    state <= ST_STAT;

                end

                // --------------------------------------------
                // Write attention / meditation / quality
                // --------------------------------------------

                ST_STAT: begin

                    bram_word_addr <= 11'd1289;

                    bram_data <= {
                        att_pending,
                        med_pending,
                        quality_pending,
                        status_seq
                    };

                    bram_we <= 4'hF;

                    state <= ST_IDLE;

                end

                // --------------------------------------------
                // Write SNN result: BRAM word 1290 (0x40001428)
                // --------------------------------------------
                ST_SNN_RESULT: begin
                    bram_word_addr <= 11'd1290;
                    bram_data <= {30'd0, snn_result_pending};
                    bram_we   <= 4'hF;
                    state <= ST_SNN_SEQ;
                end

                // --------------------------------------------
                // Write SNN result sequence: word 1291 (0x4000142C)
                // --------------------------------------------
                ST_SNN_SEQ: begin
                    snn_result_seq <= snn_result_seq + 1'b1;
                    bram_word_addr <= 11'd1291;
                    bram_data <= snn_result_seq + 1'b1;
                    bram_we   <= 4'hF;
                    state <= ST_IDLE;
                end

                default: begin
                    state <= ST_IDLE;
                end

            endcase

        end
    end

    // ========================================================
    // ILA DEBUG SIGNALS
    // Use Vivado Tools -> Set Up Debug
    // Do NOT instantiate ila_0 in this source file.
    // ========================================================

    (* mark_debug = "true" *) wire        ila_rx_valid;
    (* mark_debug = "true" *) wire [7:0]  ila_rx_byte;

    (* mark_debug = "true" *) wire        ila_rawdata_valid;
    (* mark_debug = "true" *) wire [15:0] ila_rawdata;

    (* mark_debug = "true" *) wire        ila_big_packet_valid;

    (* mark_debug = "true" *) wire [3:0]  ila_state;
    (* mark_debug = "true" *) wire [15:0] ila_write_seq;

    (* mark_debug = "true" *) wire [10:0] ila_bram_addr;
    (* mark_debug = "true" *) wire [31:0] ila_bram_data;
    (* mark_debug = "true" *) wire [3:0]  ila_bram_we;

    (* mark_debug = "true" *) wire        ila_raw_pending_valid;
    (* mark_debug = "true" *) wire        ila_band_pending_valid;

    // Debug assignments

    assign ila_rx_valid           = rx_valid;
    assign ila_rx_byte            = rx_byte;

    assign ila_rawdata_valid      = rawdata_valid;
    assign ila_rawdata            = rawdata;

    assign ila_big_packet_valid   = big_packet_valid;

    assign ila_state              = state;
    assign ila_write_seq          = write_seq;

    assign ila_bram_addr          = bram_word_addr;
    assign ila_bram_data          = bram_data;
    assign ila_bram_we            = bram_we;

    assign ila_raw_pending_valid  = raw_pending_valid;
    assign ila_band_pending_valid = band_pending_valid;

    (* mark_debug = "true" *) wire [1:0] ila_snn_class;
    (* mark_debug = "true" *) wire ila_snn_class_valid;
    (* mark_debug = "true" *) wire ila_feature_valid;
    (* mark_debug = "true" *) wire [6:0] ila_theta_pct, ila_alpha_pct, ila_beta_pct;
    assign ila_snn_class = snn_class_id;
    assign ila_snn_class_valid = snn_class_valid;
    assign ila_feature_valid = feature_valid_dbg;
    assign ila_theta_pct = theta_pct_dbg;
    assign ila_alpha_pct = alpha_pct_dbg;
    assign ila_beta_pct = beta_pct_dbg;

    // ========================================================
    // Status outputs
    // ========================================================

    assign td_matrix_ready = 1'b0;
    assign fd_matrix_ready = 1'b0;

endmodule
