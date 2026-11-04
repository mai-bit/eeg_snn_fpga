`timescale 1ns / 1ps
// 8-N-1 UART receiver. Defaults: 100 MHz PL clock, 57600 baud.
module uart_rx #(
    parameter integer CLKS_PER_BIT = 1736,
    parameter integer HALF_CLKS    = 868
)(
    input  wire       clk,
    input  wire       rst_n,
    input  wire       rx,
    output reg  [7:0] data,
    output reg        valid
);
    localparam [1:0] IDLE  = 2'd0,
                     START = 2'd1,
                     DATA  = 2'd2,
                     STOP  = 2'd3;

    reg [1:0] state;
    reg [31:0] cnt;
    reg [2:0] bit_idx;
    reg [7:0] shift;
    reg rx_sync1, rx_sync2;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rx_sync1 <= 1'b1;
            rx_sync2 <= 1'b1;
            state    <= IDLE;
            cnt      <= 0;
            bit_idx  <= 0;
            shift    <= 0;
            data     <= 0;
            valid    <= 1'b0;
        end else begin
            rx_sync1 <= rx;
            rx_sync2 <= rx_sync1;
            valid <= 1'b0;

            case (state)
                IDLE: begin
                    cnt <= 0;
                    if (!rx_sync2)
                        state <= START;
                end

                START: begin
                    if (cnt >= HALF_CLKS-1) begin
                        cnt <= 0;
                        if (!rx_sync2) begin
                            bit_idx <= 0;
                            state <= DATA;
                        end else begin
                            state <= IDLE;
                        end
                    end else cnt <= cnt + 1'b1;
                end

                DATA: begin
                    if (cnt >= CLKS_PER_BIT-1) begin
                        cnt <= 0;
                        shift[bit_idx] <= rx_sync2;
                        if (bit_idx == 7)
                            state <= STOP;
                        else
                            bit_idx <= bit_idx + 1'b1;
                    end else cnt <= cnt + 1'b1;
                end

                STOP: begin
                    if (cnt >= CLKS_PER_BIT-1) begin
                        cnt <= 0;
                        state <= IDLE;
                        if (rx_sync2)
                            begin data <= shift; valid <= 1'b1; end
                    end else cnt <= cnt + 1'b1;
                end

                default: begin state <= IDLE; cnt <= 0; end
            endcase
        end
    end
endmodule
