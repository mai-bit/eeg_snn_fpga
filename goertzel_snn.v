`timescale 1ns / 1ps
// Fixed-point Goertzel + 3-class LIF SNN.
// Mirrors main(4).c parameters: Fs=215Hz (provisional), NWIN=430,
// hop=108, bins 4..35Hz, Theta 4..7, Alpha 8..12, Beta 13..30.
// All arithmetic is signed fixed-point. Validate against a software
// fixed-point golden model before treating outputs as calibrated.
module goertzel_snn #(
    parameter integer NWIN=430,
    parameter integer NHOP=108,
    parameter integer COEFF_FRAC=14,
    parameter integer SNN_TICKS=100,
    parameter integer LIF_THRESHOLD=64,
    parameter integer LEAK_SHIFT=3
)(
    input wire clk,
    input wire rst_n,
    input wire signed [15:0] raw_sample,
    input wire sample_valid,
    output reg [1:0] class_id,       // 0 Theta, 1 Alpha, 2 Beta
    output reg class_valid,
    output reg [6:0] theta_pct,
    output reg [6:0] alpha_pct,
    output reg [6:0] beta_pct,
    output reg feature_valid
);
    localparam [2:0] COLLECT=0, CALC=1, POWER=2, DIV_THETA=3, DIV_ALPHA=4, SNN_RUN=5, OVERLAP=6;
    reg [2:0] state;

    reg signed [15:0] samples [0:NWIN-1];
    reg [8:0] collect_count;
    reg [8:0] sample_idx;
    reg [5:0] bin_idx;
    reg [8:0] shift_idx;

    // Goertzel recurrence state, 40-bit signed.
    reg signed [39:0] q1, q2;
    reg signed [39:0] q0;
    reg signed [55:0] coeff_q1;
    reg signed [95:0] cprod;
    reg signed [79:0] q1sq, q2sq;
    reg signed [87:0] pfull;
    reg [95:0] theta_sum, alpha_sum, beta_sum;
    reg [95:0] total_sum;
    reg [95:0] numerator;
    reg [95:0] remainder;
    reg [95:0] divisor;
    reg [6:0] quotient;
    reg [6:0] div_bit;

    // SNN rate encoder and LIF output layer.
    reg [6:0] enc_theta, enc_alpha, enc_beta;
    reg [6:0] snn_tick;
    reg signed [23:0] mem_t, mem_a, mem_b;
    reg [7:0] count_t, count_a, count_b;
    reg signed [23:0] next_t, next_a, next_b;
    reg signed [23:0] input_t, input_a, input_b;
    reg [7:0] best_count;

    function signed [15:0] coeff(input [5:0] idx);
    begin
      case(idx)
        0:coeff=16'sd32544; 1:coeff=16'sd32419; 2:coeff=16'sd32266; 3:coeff=16'sd32085;
        4:coeff=16'sd31877; 5:coeff=16'sd31641; 6:coeff=16'sd31379; 7:coeff=16'sd31089;
        8:coeff=16'sd30774; 9:coeff=16'sd30432; 10:coeff=16'sd30063; 11:coeff=16'sd29670;
        12:coeff=16'sd29251; 13:coeff=16'sd28807; 14:coeff=16'sd28338; 15:coeff=16'sd27845;
        16:coeff=16'sd27328; 17:coeff=16'sd26788; 18:coeff=16'sd26226; 19:coeff=16'sd25640;
        20:coeff=16'sd25033; 21:coeff=16'sd24405; 22:coeff=16'sd23755; 23:coeff=16'sd23086;
        24:coeff=16'sd22396; 25:coeff=16'sd21688; 26:coeff=16'sd20961; 27:coeff=16'sd20216;
        28:coeff=16'sd19454; 29:coeff=16'sd18675; 30:coeff=16'sd17880; 31:coeff=16'sd17070;
        default:coeff=0;
      endcase
    end
    endfunction

    // Combinational recurrence and power arithmetic with explicit widths.
    always @* begin
        coeff_q1 = coeff(bin_idx) * q1;
        q0 = $signed(samples[sample_idx]) + (coeff_q1 >>> COEFF_FRAC) - q2;
        q1sq = q1 * q1;
        q2sq = q2 * q2;
        cprod = coeff(bin_idx) * q1 * q2;
        pfull = $signed({1'b0,q1sq}) + $signed({1'b0,q2sq})
                - $signed(cprod >>> COEFF_FRAC);
    end

    always @(posedge clk or negedge rst_n) begin
      if(!rst_n) begin
        state<=COLLECT; collect_count<=0; sample_idx<=0; bin_idx<=0; shift_idx<=0;
        q1<=0; q2<=0; theta_sum<=0; alpha_sum<=0; beta_sum<=0; total_sum<=0;
        numerator<=0; remainder<=0; divisor<=0; quotient<=0; div_bit<=0;
        theta_pct<=0; alpha_pct<=0; beta_pct<=0; feature_valid<=0;
        enc_theta<=0; enc_alpha<=0; enc_beta<=0; snn_tick<=0;
        mem_t<=0; mem_a<=0; mem_b<=0; count_t<=0; count_a<=0; count_b<=0;
        next_t<=0; next_a<=0; next_b<=0; input_t<=0; input_a<=0; input_b<=0;
        class_id<=0; class_valid<=0; best_count<=0;
      end else begin
        feature_valid<=0;
        class_valid<=0;
        case(state)
          COLLECT: if(sample_valid) begin
            samples[collect_count] <= raw_sample;
            if(collect_count == NWIN-1) begin
              sample_idx<=0; bin_idx<=0; q1<=0; q2<=0;
              theta_sum<=0; alpha_sum<=0; beta_sum<=0;
              state<=CALC;
            end else collect_count<=collect_count+1'b1;
          end

          CALC: begin
            q2<=q1;
            q1<=q0;
            if(sample_idx == NWIN-1) begin
              state<=POWER;
            end else sample_idx<=sample_idx+1'b1;
          end

          POWER: begin
            // Clamp negative round-off to zero using signed comparison.
            if(pfull < 0) begin
              if(bin_idx<=3) theta_sum<=theta_sum;
              else if(bin_idx<=8) alpha_sum<=alpha_sum;
              else if(bin_idx<=26) beta_sum<=beta_sum;
            end else begin
              if(bin_idx<=3) theta_sum<=theta_sum + pfull[87:0];
              else if(bin_idx<=8) alpha_sum<=alpha_sum + pfull[87:0];
              else if(bin_idx<=26) beta_sum<=beta_sum + pfull[87:0];
            end
            q1<=0; q2<=0; sample_idx<=0;
            if(bin_idx==31) begin
              // Bins 27..35 Hz are outside the three bands; do not add bin 31.
              total_sum<=theta_sum + alpha_sum + beta_sum;
              state<=DIV_THETA;
              div_bit<=6'd6;
              quotient<=0;
              // Start first division: theta percentage.
              numerator<=(theta_sum * 96'd100);
              divisor<=theta_sum + alpha_sum + beta_sum;
              remainder<=0;
            end else bin_idx<=bin_idx+1'b1;
          end

          // 7-step binary search division for percentage (0..100).
          DIV_THETA: begin
            // Compare candidate quotient * divisor against numerator.
            if (({89'd0,quotient} | (96'd1 << div_bit)) * divisor <= numerator)
              quotient <= quotient | (7'd1 << div_bit);
            if(div_bit==0) begin
              if(quotient > 100) theta_pct<=100;
              else theta_pct<=quotient;
              // second percentage: alpha
              numerator <= alpha_sum * 96'd100;
              divisor <= total_sum;
              quotient<=0;
              div_bit<=6;
              state<=DIV_ALPHA;
            end else div_bit<=div_bit-1'b1;
          end

          // Second percentage division: alpha = alpha_sum*100/total_sum.
          DIV_ALPHA: begin
            if (({89'd0,quotient} | (96'd1 << div_bit)) * divisor <= numerator)
              quotient <= quotient | (7'd1 << div_bit);
            if(div_bit==0) begin
              if(quotient>100) alpha_pct<=100; else alpha_pct<=quotient;
              if(total_sum==0) begin
                theta_pct<=0; alpha_pct<=0; beta_pct<=0;
                enc_theta<=0; enc_alpha<=0; enc_beta<=0;
              end else begin
                beta_pct <= (theta_pct + quotient >= 100) ? 0 :
                            (100 - theta_pct - quotient);
                enc_theta <= theta_pct;
                enc_alpha <= (quotient>100) ? 100 : quotient;
                enc_beta <= (theta_pct + quotient >= 100) ? 0 :
                            (100 - theta_pct - quotient);
              end
              feature_valid<=1;
              snn_tick<=0; mem_t<=0; mem_a<=0; mem_b<=0;
              count_t<=0; count_a<=0; count_b<=0;
              state<=SNN_RUN;
            end else div_bit<=div_bit-1'b1;
          end

          SNN_RUN: begin
            // Nonzero TEST weights, not trained weights.
            // Diagonal +8, cross inhibition -2. Input rate coding: pct spikes
            // for tick < pct. LIF leak is arithmetic right shift.
            next_t = mem_t - (mem_t >>> LEAK_SHIFT)
                   + ((snn_tick<enc_theta)?24'sd8:24'sd0)
                   - ((snn_tick<enc_alpha)?24'sd2:24'sd0)
                   - ((snn_tick<enc_beta )?24'sd2:24'sd0);
            next_a = mem_a - (mem_a >>> LEAK_SHIFT)
                   - ((snn_tick<enc_theta)?24'sd2:24'sd0)
                   + ((snn_tick<enc_alpha)?24'sd8:24'sd0)
                   - ((snn_tick<enc_beta )?24'sd2:24'sd0);
            next_b = mem_b - (mem_b >>> LEAK_SHIFT)
                   - ((snn_tick<enc_theta)?24'sd2:24'sd0)
                   - ((snn_tick<enc_alpha)?24'sd2:24'sd0)
                   + ((snn_tick<enc_beta )?24'sd8:24'sd0);
            if(next_t>=LIF_THRESHOLD) begin mem_t<=0; count_t<=count_t+1'b1; end else mem_t<=next_t;
            if(next_a>=LIF_THRESHOLD) begin mem_a<=0; count_a<=count_a+1'b1; end else mem_a<=next_a;
            if(next_b>=LIF_THRESHOLD) begin mem_b<=0; count_b<=count_b+1'b1; end else mem_b<=next_b;
            if(snn_tick==SNN_TICKS-1) begin
              // Include current-cycle spikes in comparison to avoid stale counts.
              best_count <= count_t + ((next_t>=LIF_THRESHOLD)?1'b1:1'b0);
              if((count_a + ((next_a>=LIF_THRESHOLD)?1'b1:1'b0)) >
                 (count_t + ((next_t>=LIF_THRESHOLD)?1'b1:1'b0)) &&
                 (count_a + ((next_a>=LIF_THRESHOLD)?1'b1:1'b0)) >=
                 (count_b + ((next_b>=LIF_THRESHOLD)?1'b1:1'b0))) class_id<=1;
              else if((count_b + ((next_b>=LIF_THRESHOLD)?1'b1:1'b0)) >
                      (count_t + ((next_t>=LIF_THRESHOLD)?1'b1:1'b0)) &&
                      (count_b + ((next_b>=LIF_THRESHOLD)?1'b1:1'b0)) >
                      (count_a + ((next_a>=LIF_THRESHOLD)?1'b1:1'b0))) class_id<=2;
              else class_id<=0;
              class_valid<=1;
              shift_idx<=0;
              state<=OVERLAP;
            end else snn_tick<=snn_tick+1'b1;
          end
          default: state<=COLLECT;
        endcase

        // Preserve NWIN-NHOP samples; then collect NHOP new samples.
        if(state==OVERLAP) begin
          if(shift_idx < NWIN-NHOP) begin
            samples[shift_idx] <= samples[shift_idx+NHOP];
            shift_idx<=shift_idx+1'b1;
          end else begin
            collect_count<=NWIN-NHOP;
            shift_idx<=0;
            state<=COLLECT;
            theta_sum<=0; alpha_sum<=0; beta_sum<=0; total_sum<=0;
          end
        end
      end
    end
endmodule
