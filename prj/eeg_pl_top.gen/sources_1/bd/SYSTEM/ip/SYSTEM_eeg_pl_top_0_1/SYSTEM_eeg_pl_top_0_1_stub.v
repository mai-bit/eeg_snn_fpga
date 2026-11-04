// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Nov  4 03:03:49 2026
// Host        : LAPTOP-PNSLBKDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA/prj/eeg_brain_snn/prj/eeg_pl_top.gen/sources_1/bd/SYSTEM/ip/SYSTEM_eeg_pl_top_0_1/SYSTEM_eeg_pl_top_0_1_stub.v
// Design      : SYSTEM_eeg_pl_top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "eeg_pl_top,Vivado 2020.2" *)
module SYSTEM_eeg_pl_top_0_1(clk, rst_n, uart_rx, bram_addr, bram_data, bram_we, 
  td_matrix_ready, fd_matrix_ready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,uart_rx,bram_addr[10:0],bram_data[31:0],bram_we[3:0],td_matrix_ready,fd_matrix_ready" */;
  input clk;
  input rst_n;
  input uart_rx;
  output [10:0]bram_addr;
  output [31:0]bram_data;
  output [3:0]bram_we;
  output td_matrix_ready;
  output fd_matrix_ready;
endmodule
