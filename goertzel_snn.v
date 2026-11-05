`timescale 1ns / 1ps
// ============================================================================
// Fixed-point Goertzel + Direct Voltage Injection SNN (Scheme B).
// Supports configurable FS_HZ (215Hz default for sim, 512Hz for live TGAM).
// NWIN=430, NHOP=108, 32 Goertzel bins (4..35 Hz).
// Bands: Theta 4..7 Hz (bins 0..3), Alpha 8..12 Hz (bins 4..8), Beta 13..30 Hz (bins 9..26).
// SNN: Direct Voltage Injection No-leak IF Neurons with lateral inhibition,
//      Winner-Take-All spike counting over SNN_TICKS time steps.
// ============================================================================

module goertzel_snn #(
    parameter integer FS_HZ = 215,
    parameter integer NWIN = 430,
    parameter integer NHOP = 108,
    parameter integer COEFF_FRAC = 14,
    parameter integer SNN_TICKS = 16,
    parameter integer LIF_THRESHOLD = 100,
    parameter integer W_LATERAL_INH = 10
)(
    input  wire               clk,
    input  wire               rst_n,
    input  wire signed [15:0] raw_sample,
    input  wire               sample_valid,
    output reg  [1:0]         class_id,       // 0 Theta, 1 Alpha, 2 Beta
    output reg                class_valid,
    output reg  [6:0]         theta_pct,
    output reg  [6:0]         alpha_pct,
    output reg  [6:0]         beta_pct,
    output reg                feature_valid
);

    localparam [2:0]
        COLLECT   = 3'd0,
        CALC      = 3'd1,
        POWER     = 3'd2,
        DIV_THETA = 3'd3,
        DIV_ALPHA = 3'd4,
        SNN_RUN   = 3'd5,
        OVERLAP   = 3'd6;

    reg [2:0] state;

    reg signed [15:0] samples [0:NWIN-1];
    reg [8:0] collect_count;
    reg [8:0] sample_idx;
    reg [5:0] bin_idx;
    reg [8:0] shift_idx;

    // Goertzel recurrence registers
    reg signed [39:0] q1, q2;
    reg [95:0] theta_sum, alpha_sum, beta_sum;
    reg [95:0] total_sum;
    reg [95:0] numerator;
    reg [95:0] divisor;
    reg [6:0]  quotient;
    reg [6:0]  div_bit;

    // SNN state registers
    reg [4:0] snn_tick;
    reg signed [15:0] mem_t, mem_a, mem_b;
    reg spk_t_prev, spk_a_prev, spk_b_prev;
    reg [7:0] count_t, count_a, count_b;

    function signed [15:0] coeff;
        input [5:0] idx;
        begin
            if (FS_HZ == 512) begin
                case(idx)
                    6'd0:  coeff = 16'sd32729; // 4Hz
                    6'd1:  coeff = 16'sd32706; // 5Hz
                    6'd2:  coeff = 16'sd32679; // 6Hz
                    6'd3:  coeff = 16'sd32647; // 7Hz
                    6'd4:  coeff = 16'sd32610; // 8Hz
                    6'd5:  coeff = 16'sd32568; // 9Hz
                    6'd6:  coeff = 16'sd32522; // 10Hz
                    6'd7:  coeff = 16'sd32470; // 11Hz
                    6'd8:  coeff = 16'sd32413; // 12Hz
                    6'd9:  coeff = 16'sd32352; // 13Hz
                    6'd10: coeff = 16'sd32286; // 14Hz
                    6'd11: coeff = 16'sd32214; // 15Hz
                    6'd12: coeff = 16'sd32138; // 16Hz
                    6'd13: coeff = 16'sd32058; // 17Hz
                    6'd14: coeff = 16'sd31972; // 18Hz
                    6'd15: coeff = 16'sd31881; // 19Hz
                    6'd16: coeff = 16'sd31786; // 20Hz
                    6'd17: coeff = 16'sd31686; // 21Hz
                    6'd18: coeff = 16'sd31581; // 22Hz
                    6'd19: coeff = 16'sd31471; // 23Hz
                    6'd20: coeff = 16'sd31357; // 24Hz
                    6'd21: coeff = 16'sd31238; // 25Hz
                    6'd22: coeff = 16'sd31114; // 26Hz
                    6'd23: coeff = 16'sd30986; // 27Hz
                    6'd24: coeff = 16'sd30853; // 28Hz
                    6'd25: coeff = 16'sd30715; // 29Hz
                    6'd26: coeff = 16'sd30572; // 30Hz
                    6'd27: coeff = 16'sd30425; // 31Hz
                    6'd28: coeff = 16'sd30274; // 32Hz
                    6'd29: coeff = 16'sd30118; // 33Hz
                    6'd30: coeff = 16'sd29957; // 34Hz
                    6'd31: coeff = 16'sd29792; // 35Hz
                    default: coeff = 16'sd0;
                endcase
            end else begin
                case(idx)
                    6'd0:  coeff = 16'sd32544; // 4Hz
                    6'd1:  coeff = 16'sd32419; // 5Hz
                    6'd2:  coeff = 16'sd32266; // 6Hz
                    6'd3:  coeff = 16'sd32085; // 7Hz
                    6'd4:  coeff = 16'sd31877; // 8Hz
                    6'd5:  coeff = 16'sd31641; // 9Hz
                    6'd6:  coeff = 16'sd31379; // 10Hz
                    6'd7:  coeff = 16'sd31089; // 11Hz
                    6'd8:  coeff = 16'sd30774; // 12Hz
                    6'd9:  coeff = 16'sd30432; // 13Hz
                    6'd10: coeff = 16'sd30063; // 14Hz
                    6'd11: coeff = 16'sd29670; // 15Hz
                    6'd12: coeff = 16'sd29251; // 16Hz
                    6'd13: coeff = 16'sd28807; // 17Hz
                    6'd14: coeff = 16'sd28338; // 18Hz
                    6'd15: coeff = 16'sd27845; // 19Hz
                    6'd16: coeff = 16'sd27328; // 20Hz
                    6'd17: coeff = 16'sd26788; // 21Hz
                    6'd18: coeff = 16'sd26226; // 22Hz
                    6'd19: coeff = 16'sd25640; // 23Hz
                    6'd20: coeff = 16'sd25033; // 24Hz
                    6'd21: coeff = 16'sd24405; // 25Hz
                    6'd22: coeff = 16'sd23755; // 26Hz
                    6'd23: coeff = 16'sd23086; // 27Hz
                    6'd24: coeff = 16'sd22396; // 28Hz
                    6'd25: coeff = 16'sd21688; // 29Hz
                    6'd26: coeff = 16'sd20961; // 30Hz
                    6'd27: coeff = 16'sd20216; // 31Hz
                    6'd28: coeff = 16'sd19454; // 32Hz
                    6'd29: coeff = 16'sd18675; // 33Hz
                    6'd30: coeff = 16'sd17880; // 34Hz
                    6'd31: coeff = 16'sd17070; // 35Hz
                    default: coeff = 16'sd0;
                endcase
            end
        end
    endfunction

    // Goertzel recurrence calculation
    wire signed [55:0] coeff_q1 = coeff(bin_idx) * q1;
    wire signed [39:0] q0 = {{24{samples[sample_idx][15]}}, samples[sample_idx]}
                          + coeff_q1[53:COEFF_FRAC]
                          - q2;

    wire signed [79:0] q1sq = q1 * q1;
    wire signed [79:0] q2sq = q2 * q2;
    wire signed [95:0] cprod = coeff(bin_idx) * q1 * q2;
    wire signed [87:0] pfull = $signed({1'b0, q1sq}) + $signed({1'b0, q2sq})
                             - $signed(cprod[95:COEFF_FRAC]);

    // SNN direct voltage injection calculations
    wire signed [15:0] s_threshold = $signed(LIF_THRESHOLD[15:0]);
    wire signed [15:0] s_lateral_inh = $signed(W_LATERAL_INH[15:0]);

    wire signed [15:0] inh_t = (spk_a_prev ? s_lateral_inh : 16'sd0) + (spk_b_prev ? s_lateral_inh : 16'sd0);
    wire signed [15:0] inh_a = (spk_t_prev ? s_lateral_inh : 16'sd0) + (spk_b_prev ? s_lateral_inh : 16'sd0);
    wire signed [15:0] inh_b = (spk_t_prev ? s_lateral_inh : 16'sd0) + (spk_a_prev ? s_lateral_inh : 16'sd0);

    wire signed [15:0] next_mem_t = mem_t + $signed({9'd0, theta_pct}) - inh_t;
    wire signed [15:0] next_mem_a = mem_a + $signed({9'd0, alpha_pct}) - inh_a;
    wire signed [15:0] next_mem_b = mem_b + $signed({9'd0, beta_pct})  - inh_b;

    wire spk_t_now = (next_mem_t >= s_threshold);
    wire spk_a_now = (next_mem_a >= s_threshold);
    wire spk_b_now = (next_mem_b >= s_threshold);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state         <= COLLECT;
            collect_count <= 9'd0;
            sample_idx    <= 9'd0;
            bin_idx       <= 6'd0;
            shift_idx     <= 9'd0;
            q1            <= 40'sd0;
            q2            <= 40'sd0;
            theta_sum     <= 96'd0;
            alpha_sum     <= 96'd0;
            beta_sum      <= 96'd0;
            total_sum     <= 96'd0;
            numerator     <= 96'd0;
            divisor       <= 96'd0;
            quotient      <= 7'd0;
            div_bit       <= 7'd0;
            theta_pct     <= 7'd0;
            alpha_pct     <= 7'd0;
            beta_pct      <= 7'd0;
            feature_valid <= 1'b0;
            snn_tick      <= 5'd0;
            mem_t         <= 16'sd0;
            mem_a         <= 16'sd0;
            mem_b         <= 16'sd0;
            spk_t_prev    <= 1'b0;
            spk_a_prev    <= 1'b0;
            spk_b_prev    <= 1'b0;
            count_t       <= 8'd0;
            count_a       <= 8'd0;
            count_b       <= 8'd0;
            class_id      <= 2'd0;
            class_valid   <= 1'b0;
        end else begin
            feature_valid <= 1'b0;
            class_valid   <= 1'b0;

            case (state)
                COLLECT: begin
                    if (sample_valid) begin
                        samples[collect_count] <= raw_sample;
                        if (collect_count == NWIN - 1) begin
                            sample_idx <= 9'd0;
                            bin_idx    <= 6'd0;
                            q1         <= 40'sd0;
                            q2         <= 40'sd0;
                            theta_sum  <= 96'd0;
                            alpha_sum  <= 96'd0;
                            beta_sum   <= 96'd0;
                            state      <= CALC;
                        end else begin
                            collect_count <= collect_count + 1'b1;
                        end
                    end
                end

                CALC: begin
                    q2 <= q1;
                    q1 <= q0;
                    if (sample_idx == NWIN - 1) begin
                        state <= POWER;
                    end else begin
                        sample_idx <= sample_idx + 1'b1;
                    end
                end

                POWER: begin
                    if (pfull > 0) begin
                        if (bin_idx <= 6'd3)
                            theta_sum <= theta_sum + {{8{1'b0}}, pfull};
                        else if (bin_idx <= 6'd8)
                            alpha_sum <= alpha_sum + {{8{1'b0}}, pfull};
                        else if (bin_idx <= 6'd26)
                            beta_sum  <= beta_sum  + {{8{1'b0}}, pfull};
                    end
                    q1         <= 40'sd0;
                    q2         <= 40'sd0;
                    sample_idx <= 9'd0;

                    if (bin_idx == 6'd31) begin
                        total_sum <= theta_sum + alpha_sum + beta_sum;
                        state     <= DIV_THETA;
                        div_bit   <= 7'd6;
                        quotient  <= 7'd0;
                        numerator <= (theta_sum * 96'd100);
                        divisor   <= theta_sum + alpha_sum + beta_sum;
                    end else begin
                        bin_idx <= bin_idx + 1'b1;
                        state   <= CALC;
                    end
                end

                DIV_THETA: begin
                    if (({89'd0, quotient} | (96'd1 << div_bit)) * divisor <= numerator)
                        quotient <= quotient | (7'd1 << div_bit);
                    if (div_bit == 7'd0) begin
                        if (quotient > 7'd100) theta_pct <= 7'd100;
                        else theta_pct <= quotient;
                        numerator <= alpha_sum * 96'd100;
                        divisor   <= total_sum;
                        quotient  <= 7'd0;
                        div_bit   <= 7'd6;
                        state     <= DIV_ALPHA;
                    end else begin
                        div_bit <= div_bit - 1'b1;
                    end
                end

                DIV_ALPHA: begin
                    if (({89'd0, quotient} | (96'd1 << div_bit)) * divisor <= numerator)
                        quotient <= quotient | (7'd1 << div_bit);
                    if (div_bit == 7'd0) begin
                        if (total_sum == 96'd0) begin
                            theta_pct <= 7'd0;
                            alpha_pct <= 7'd0;
                            beta_pct  <= 7'd0;
                        end else begin
                            alpha_pct <= (quotient > 7'd100) ? 7'd100 : quotient;
                            beta_pct  <= (theta_pct + quotient >= 7'd100) ? 7'd0 :
                                         (7'd100 - theta_pct - quotient);
                        end
                        feature_valid <= 1'b1;

                        // Initialize SNN
                        snn_tick   <= 5'd0;
                        mem_t      <= 16'sd0;
                        mem_a      <= 16'sd0;
                        mem_b      <= 16'sd0;
                        spk_t_prev <= 1'b0;
                        spk_a_prev <= 1'b0;
                        spk_b_prev <= 1'b0;
                        count_t    <= 8'd0;
                        count_a    <= 8'd0;
                        count_b    <= 8'd0;
                        state      <= SNN_RUN;
                    end else begin
                        div_bit <= div_bit - 1'b1;
                    end
                end

                SNN_RUN: begin
                    if (spk_t_now) begin
                        mem_t      <= 16'sd0;
                        spk_t_prev <= 1'b1;
                        count_t    <= count_t + 1'b1;
                    end else begin
                        mem_t      <= (next_mem_t < 0) ? 16'sd0 : next_mem_t;
                        spk_t_prev <= 1'b0;
                    end

                    if (spk_a_now) begin
                        mem_a      <= 16'sd0;
                        spk_a_prev <= 1'b1;
                        count_a    <= count_a + 1'b1;
                    end else begin
                        mem_a      <= (next_mem_a < 0) ? 16'sd0 : next_mem_a;
                        spk_a_prev <= 1'b0;
                    end

                    if (spk_b_now) begin
                        mem_b      <= 16'sd0;
                        spk_b_prev <= 1'b1;
                        count_b    <= count_b + 1'b1;
                    end else begin
                        mem_b      <= (next_mem_b < 0) ? 16'sd0 : next_mem_b;
                        spk_b_prev <= 1'b0;
                    end

                    if (snn_tick == SNN_TICKS - 1) begin
                        // Winner-Take-All spike classification
                        if ((count_a + (spk_a_now ? 1'b1 : 1'b0)) > (count_t + (spk_t_now ? 1'b1 : 1'b0)) &&
                            (count_a + (spk_a_now ? 1'b1 : 1'b0)) >= (count_b + (spk_b_now ? 1'b1 : 1'b0)))
                            class_id <= 2'd1; // Alpha
                        else if ((count_b + (spk_b_now ? 1'b1 : 1'b0)) > (count_t + (spk_t_now ? 1'b1 : 1'b0)) &&
                                 (count_b + (spk_b_now ? 1'b1 : 1'b0)) > (count_a + (spk_a_now ? 1'b1 : 1'b0)))
                            class_id <= 2'd2; // Beta
                        else
                            class_id <= 2'd0; // Theta (or default 0)

                        class_valid <= 1'b1;
                        shift_idx   <= 9'd0;
                        state       <= OVERLAP;
                    end else begin
                        snn_tick <= snn_tick + 1'b1;
                    end
                end

                OVERLAP: begin
                    if (shift_idx < NWIN - NHOP) begin
                        samples[shift_idx] <= samples[shift_idx + NHOP];
                        shift_idx <= shift_idx + 1'b1;
                    end else begin
                        collect_count <= NWIN - NHOP;
                        shift_idx     <= 9'd0;
                        state         <= COLLECT;
                        theta_sum     <= 96'd0;
                        alpha_sum     <= 96'd0;
                        beta_sum      <= 96'd0;
                        total_sum     <= 96'd0;
                    end
                end

                default: state <= COLLECT;
            endcase
        end
    end

endmodule
