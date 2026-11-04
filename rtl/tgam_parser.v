
`timescale 1ns / 1ps


module tgam_parser (

    input  wire        clk,
    input  wire        rst_n,

    input  wire [7:0]  rx_byte,
    input  wire        rx_valid,

    output reg  [15:0] rawdata,
    output reg         rawdata_valid,

    output reg  [23:0] delta,
    output reg  [23:0] theta,
    output reg  [23:0] low_alpha,
    output reg  [23:0] high_alpha,
    output reg  [23:0] low_beta,
    output reg  [23:0] high_beta,
    output reg  [23:0] low_gamma,
    output reg  [23:0] middle_gamma,

    output reg  [7:0]  attention,
    output reg  [7:0]  meditation,
    output reg  [7:0]  signal_quality,

    output reg         big_packet_valid
);

    // ========================================================
    // State machine
    // ========================================================

    localparam [2:0]
        S_IDLE    = 3'd0,
        S_SYNC2   = 3'd1,
        S_LENGTH  = 3'd2,
        S_PAYLOAD = 3'd3,
        S_CHECK   = 3'd4;

    reg [2:0] state;

    // ========================================================
    // Internal registers
    // ========================================================

    reg [7:0] payload [0:31];

    reg [5:0] payload_length;
    reg [5:0] payload_index;

    reg [7:0] checksum_sum;

    integer i;

    // ========================================================
    // Parser
    // ========================================================

    always @(posedge clk or negedge rst_n) begin

        if (!rst_n) begin

            state <= S_IDLE;

            payload_length <= 6'd0;
            payload_index  <= 6'd0;

            checksum_sum <= 8'd0;

            rawdata <= 16'd0;
            rawdata_valid <= 1'b0;

            delta <= 24'd0;
            theta <= 24'd0;
            low_alpha <= 24'd0;
            high_alpha <= 24'd0;
            low_beta <= 24'd0;
            high_beta <= 24'd0;
            low_gamma <= 24'd0;
            middle_gamma <= 24'd0;

            attention <= 8'd0;
            meditation <= 8'd0;
            signal_quality <= 8'd0;

            big_packet_valid <= 1'b0;

            for (i = 0; i < 32; i = i + 1)
                payload[i] <= 8'd0;

        end else begin

            // Default: one-clock valid pulses
            rawdata_valid <= 1'b0;
            big_packet_valid <= 1'b0;

            if (rx_valid) begin

                case (state)

                    // ========================================
                    // Wait for first AA
                    // ========================================

                    S_IDLE: begin

                        if (rx_byte == 8'hAA)
                            state <= S_SYNC2;

                    end

                    // ========================================
                    // Wait for second AA
                    // ========================================

                    S_SYNC2: begin

                        if (rx_byte == 8'hAA) begin

                            state <= S_LENGTH;

                        end else if (rx_byte == 8'hAA) begin

                            state <= S_SYNC2;

                        end else begin

                            state <= S_IDLE;

                        end

                    end

                    // ========================================
                    // Read packet length
                    // ========================================

                    S_LENGTH: begin

                        payload_index <= 6'd0;
                        checksum_sum <= 8'd0;

                        if ((rx_byte == 8'd4) ||
                            (rx_byte == 8'd32)) begin

                            payload_length <= rx_byte[5:0];

                            state <= S_PAYLOAD;

                        end else begin

                            state <= S_IDLE;

                        end

                    end

                    // ========================================
                    // Read payload
                    // ========================================

                    S_PAYLOAD: begin

                        if (payload_index < payload_length) begin

                            payload[payload_index] <= rx_byte;

                            checksum_sum <= checksum_sum + rx_byte;

                            if (payload_index == payload_length - 1'b1) begin

                                state <= S_CHECK;

                            end else begin

                                payload_index <= payload_index + 1'b1;

                            end

                        end else begin

                            state <= S_IDLE;

                        end

                    end

                    // ========================================
                    // Check checksum and decode packet
                    // ========================================

                    S_CHECK: begin

                        if ((~checksum_sum) == rx_byte) begin

                            // --------------------------------
                            // Raw EEG packet
                            // --------------------------------

                            if ((payload_length == 6'd4) &&
                                (payload[0] == 8'h80) &&
                                (payload[1] == 8'h02)) begin

                                // Signed 16-bit raw EEG
                                rawdata <= $signed({
                                    payload[2],
                                    payload[3]
                                });

                                rawdata_valid <= 1'b1;

                            end

                            // --------------------------------
                            // EEG Power packet
                            // --------------------------------

                            else if ((payload_length == 6'd32) &&
                                     (payload[0] == 8'h02) &&
                                     (payload[2] == 8'h83) &&
                                     (payload[3] == 8'h18) &&
                                     (payload[28] == 8'h04) &&
                                     (payload[30] == 8'h05)) begin

                                signal_quality <= payload[1];

                                delta <= {
                                    payload[4],
                                    payload[5],
                                    payload[6]
                                };

                                theta <= {
                                    payload[7],
                                    payload[8],
                                    payload[9]
                                };

                                low_alpha <= {
                                    payload[10],
                                    payload[11],
                                    payload[12]
                                };

                                high_alpha <= {
                                    payload[13],
                                    payload[14],
                                    payload[15]
                                };

                                low_beta <= {
                                    payload[16],
                                    payload[17],
                                    payload[18]
                                };

                                high_beta <= {
                                    payload[19],
                                    payload[20],
                                    payload[21]
                                };

                                low_gamma <= {
                                    payload[22],
                                    payload[23],
                                    payload[24]
                                };

                                middle_gamma <= {
                                    payload[25],
                                    payload[26],
                                    payload[27]
                                };

                                attention <= payload[29];
                                meditation <= payload[31];

                                big_packet_valid <= 1'b1;

                            end

                        end

                        // Packet finished
                        state <= S_IDLE;

                    end

                    // ========================================
                    // Default
                    // ========================================

                    default: begin

                        state <= S_IDLE;

                    end

                endcase

            end

        end

    end

endmodule
