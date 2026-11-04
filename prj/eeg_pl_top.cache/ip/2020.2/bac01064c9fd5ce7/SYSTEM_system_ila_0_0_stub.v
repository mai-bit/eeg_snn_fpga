// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Oct 11 21:06:26 2026
// Host        : LAPTOP-PNSLBKDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SYSTEM_system_ila_0_0_stub.v
// Design      : SYSTEM_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_cf98,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, SLOT_0_BRAM_en, SLOT_0_BRAM_dout, 
  SLOT_0_BRAM_din, SLOT_0_BRAM_we, SLOT_0_BRAM_addr, SLOT_0_BRAM_clk, SLOT_0_BRAM_rst)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_BRAM_en,SLOT_0_BRAM_dout[31:0],SLOT_0_BRAM_din[31:0],SLOT_0_BRAM_we[3:0],SLOT_0_BRAM_addr[12:0],SLOT_0_BRAM_clk,SLOT_0_BRAM_rst" */;
  input clk;
  input SLOT_0_BRAM_en;
  input [31:0]SLOT_0_BRAM_dout;
  input [31:0]SLOT_0_BRAM_din;
  input [3:0]SLOT_0_BRAM_we;
  input [12:0]SLOT_0_BRAM_addr;
  input SLOT_0_BRAM_clk;
  input SLOT_0_BRAM_rst;
endmodule
