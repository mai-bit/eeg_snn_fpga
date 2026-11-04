// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Nov  4 03:03:49 2026
// Host        : LAPTOP-PNSLBKDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FPGA/prj/eeg_brain_snn/prj/eeg_pl_top.gen/sources_1/bd/SYSTEM/ip/SYSTEM_eeg_pl_top_0_1/SYSTEM_eeg_pl_top_0_1_sim_netlist.v
// Design      : SYSTEM_eeg_pl_top_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SYSTEM_eeg_pl_top_0_1,eeg_pl_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "eeg_pl_top,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module SYSTEM_eeg_pl_top_0_1
   (clk,
    rst_n,
    uart_rx,
    bram_addr,
    bram_data,
    bram_we,
    td_matrix_ready,
    fd_matrix_ready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN SYSTEM_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input uart_rx;
  output [10:0]bram_addr;
  output [31:0]bram_data;
  output [3:0]bram_we;
  output td_matrix_ready;
  output fd_matrix_ready;

  wire [10:0]bram_addr;
  wire [31:0]bram_data;
  wire [2:2]\^bram_we ;
  wire clk;
  wire fd_matrix_ready;
  wire rst_n;
  wire td_matrix_ready;
  wire uart_rx;

  assign bram_we[3] = \^bram_we [2];
  assign bram_we[2] = \^bram_we [2];
  assign bram_we[1] = \^bram_we [2];
  assign bram_we[0] = \^bram_we [2];
  SYSTEM_eeg_pl_top_0_1_eeg_pl_top inst
       (.bram_addr(bram_addr),
        .bram_data(bram_data),
        .bram_we(\^bram_we ),
        .clk(clk),
        .fd_matrix_ready(fd_matrix_ready),
        .rst_n(rst_n),
        .td_matrix_ready(td_matrix_ready),
        .uart_rx(uart_rx));
endmodule

(* ORIG_REF_NAME = "eeg_pl_top" *) 
module SYSTEM_eeg_pl_top_0_1_eeg_pl_top
   (td_matrix_ready,
    fd_matrix_ready,
    bram_addr,
    bram_data,
    bram_we,
    clk,
    rst_n,
    uart_rx);
  output td_matrix_ready;
  output fd_matrix_ready;
  output [10:0]bram_addr;
  output [31:0]bram_data;
  output [0:0]bram_we;
  input clk;
  input rst_n;
  input uart_rx;

  wire \FSM_onehot_state[12]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[11] ;
  wire \FSM_onehot_state_reg_n_0_[12] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [7:0]att_pending;
  wire [7:0]attention;
  wire [23:0]\band_pending_reg[0] ;
  wire [23:0]\band_pending_reg[1] ;
  wire [23:0]\band_pending_reg[2] ;
  wire [23:0]\band_pending_reg[3] ;
  wire [23:0]\band_pending_reg[4] ;
  wire [23:0]\band_pending_reg[5] ;
  wire [23:0]\band_pending_reg[6] ;
  wire [23:0]\band_pending_reg[7] ;
  wire band_pending_valid_i_1_n_0;
  wire \bram_addr[0]_i_1_n_0 ;
  wire \bram_addr[0]_i_2_n_0 ;
  wire \bram_addr[10]_i_1_n_0 ;
  wire \bram_addr[10]_i_2_n_0 ;
  wire \bram_addr[10]_i_3_n_0 ;
  wire \bram_addr[10]_i_4_n_0 ;
  wire \bram_addr[10]_i_5_n_0 ;
  wire \bram_addr[1]_i_1_n_0 ;
  wire \bram_addr[1]_i_2_n_0 ;
  wire \bram_addr[2]_i_1_n_0 ;
  wire \bram_addr[2]_i_2_n_0 ;
  wire \bram_addr[3]_i_1_n_0 ;
  wire \bram_addr[4]_i_1_n_0 ;
  wire \bram_addr[5]_i_1_n_0 ;
  wire \bram_addr[6]_i_1_n_0 ;
  wire \bram_addr[7]_i_1_n_0 ;
  wire \bram_addr[8]_i_1_n_0 ;
  wire \bram_addr[9]_i_1_n_0 ;
  wire \bram_data[0]_i_1_n_0 ;
  wire \bram_data[0]_i_2_n_0 ;
  wire \bram_data[0]_i_3_n_0 ;
  wire \bram_data[0]_i_4_n_0 ;
  wire \bram_data[0]_i_5_n_0 ;
  wire \bram_data[10]_i_1_n_0 ;
  wire \bram_data[10]_i_2_n_0 ;
  wire \bram_data[10]_i_3_n_0 ;
  wire \bram_data[10]_i_4_n_0 ;
  wire \bram_data[10]_i_5_n_0 ;
  wire \bram_data[11]_i_1_n_0 ;
  wire \bram_data[11]_i_2_n_0 ;
  wire \bram_data[11]_i_3_n_0 ;
  wire \bram_data[11]_i_4_n_0 ;
  wire \bram_data[11]_i_5_n_0 ;
  wire \bram_data[12]_i_1_n_0 ;
  wire \bram_data[12]_i_2_n_0 ;
  wire \bram_data[12]_i_3_n_0 ;
  wire \bram_data[12]_i_5_n_0 ;
  wire \bram_data[12]_i_6_n_0 ;
  wire \bram_data[13]_i_1_n_0 ;
  wire \bram_data[13]_i_2_n_0 ;
  wire \bram_data[13]_i_3_n_0 ;
  wire \bram_data[13]_i_4_n_0 ;
  wire \bram_data[13]_i_5_n_0 ;
  wire \bram_data[14]_i_1_n_0 ;
  wire \bram_data[14]_i_2_n_0 ;
  wire \bram_data[14]_i_3_n_0 ;
  wire \bram_data[14]_i_4_n_0 ;
  wire \bram_data[14]_i_5_n_0 ;
  wire \bram_data[15]_i_1_n_0 ;
  wire \bram_data[15]_i_2_n_0 ;
  wire \bram_data[15]_i_4_n_0 ;
  wire \bram_data[15]_i_5_n_0 ;
  wire \bram_data[15]_i_6_n_0 ;
  wire \bram_data[16]_i_1_n_0 ;
  wire \bram_data[16]_i_2_n_0 ;
  wire \bram_data[16]_i_3_n_0 ;
  wire \bram_data[16]_i_4_n_0 ;
  wire \bram_data[17]_i_1_n_0 ;
  wire \bram_data[17]_i_2_n_0 ;
  wire \bram_data[17]_i_3_n_0 ;
  wire \bram_data[17]_i_4_n_0 ;
  wire \bram_data[18]_i_1_n_0 ;
  wire \bram_data[18]_i_2_n_0 ;
  wire \bram_data[18]_i_3_n_0 ;
  wire \bram_data[18]_i_4_n_0 ;
  wire \bram_data[19]_i_1_n_0 ;
  wire \bram_data[19]_i_2_n_0 ;
  wire \bram_data[19]_i_3_n_0 ;
  wire \bram_data[19]_i_4_n_0 ;
  wire \bram_data[1]_i_1_n_0 ;
  wire \bram_data[1]_i_2_n_0 ;
  wire \bram_data[1]_i_3_n_0 ;
  wire \bram_data[1]_i_4_n_0 ;
  wire \bram_data[1]_i_5_n_0 ;
  wire \bram_data[20]_i_1_n_0 ;
  wire \bram_data[20]_i_2_n_0 ;
  wire \bram_data[20]_i_3_n_0 ;
  wire \bram_data[20]_i_4_n_0 ;
  wire \bram_data[21]_i_1_n_0 ;
  wire \bram_data[21]_i_2_n_0 ;
  wire \bram_data[21]_i_3_n_0 ;
  wire \bram_data[21]_i_4_n_0 ;
  wire \bram_data[22]_i_1_n_0 ;
  wire \bram_data[22]_i_2_n_0 ;
  wire \bram_data[22]_i_3_n_0 ;
  wire \bram_data[22]_i_4_n_0 ;
  wire \bram_data[23]_i_1_n_0 ;
  wire \bram_data[23]_i_2_n_0 ;
  wire \bram_data[23]_i_3_n_0 ;
  wire \bram_data[23]_i_4_n_0 ;
  wire \bram_data[24]_i_1_n_0 ;
  wire \bram_data[25]_i_1_n_0 ;
  wire \bram_data[26]_i_1_n_0 ;
  wire \bram_data[27]_i_1_n_0 ;
  wire \bram_data[28]_i_1_n_0 ;
  wire \bram_data[29]_i_1_n_0 ;
  wire \bram_data[2]_i_1_n_0 ;
  wire \bram_data[2]_i_2_n_0 ;
  wire \bram_data[2]_i_3_n_0 ;
  wire \bram_data[2]_i_4_n_0 ;
  wire \bram_data[2]_i_5_n_0 ;
  wire \bram_data[30]_i_1_n_0 ;
  wire \bram_data[31]_i_1_n_0 ;
  wire \bram_data[3]_i_1_n_0 ;
  wire \bram_data[3]_i_2_n_0 ;
  wire \bram_data[3]_i_3_n_0 ;
  wire \bram_data[3]_i_4_n_0 ;
  wire \bram_data[3]_i_5_n_0 ;
  wire \bram_data[4]_i_1_n_0 ;
  wire \bram_data[4]_i_2_n_0 ;
  wire \bram_data[4]_i_3_n_0 ;
  wire \bram_data[4]_i_5_n_0 ;
  wire \bram_data[4]_i_6_n_0 ;
  wire \bram_data[5]_i_1_n_0 ;
  wire \bram_data[5]_i_2_n_0 ;
  wire \bram_data[5]_i_3_n_0 ;
  wire \bram_data[5]_i_4_n_0 ;
  wire \bram_data[5]_i_5_n_0 ;
  wire \bram_data[6]_i_1_n_0 ;
  wire \bram_data[6]_i_2_n_0 ;
  wire \bram_data[6]_i_3_n_0 ;
  wire \bram_data[6]_i_4_n_0 ;
  wire \bram_data[6]_i_5_n_0 ;
  wire \bram_data[7]_i_1_n_0 ;
  wire \bram_data[7]_i_2_n_0 ;
  wire \bram_data[7]_i_3_n_0 ;
  wire \bram_data[7]_i_4_n_0 ;
  wire \bram_data[7]_i_5_n_0 ;
  wire \bram_data[8]_i_1_n_0 ;
  wire \bram_data[8]_i_2_n_0 ;
  wire \bram_data[8]_i_3_n_0 ;
  wire \bram_data[8]_i_5_n_0 ;
  wire \bram_data[8]_i_6_n_0 ;
  wire \bram_data[9]_i_1_n_0 ;
  wire \bram_data[9]_i_2_n_0 ;
  wire \bram_data[9]_i_3_n_0 ;
  wire \bram_data[9]_i_4_n_0 ;
  wire \bram_data[9]_i_5_n_0 ;
  wire \bram_data_reg[12]_i_4_n_0 ;
  wire \bram_data_reg[12]_i_4_n_1 ;
  wire \bram_data_reg[12]_i_4_n_2 ;
  wire \bram_data_reg[12]_i_4_n_3 ;
  wire \bram_data_reg[15]_i_3_n_2 ;
  wire \bram_data_reg[15]_i_3_n_3 ;
  wire \bram_data_reg[4]_i_4_n_0 ;
  wire \bram_data_reg[4]_i_4_n_1 ;
  wire \bram_data_reg[4]_i_4_n_2 ;
  wire \bram_data_reg[4]_i_4_n_3 ;
  wire \bram_data_reg[8]_i_4_n_0 ;
  wire \bram_data_reg[8]_i_4_n_1 ;
  wire \bram_data_reg[8]_i_4_n_2 ;
  wire \bram_data_reg[8]_i_4_n_3 ;
  wire clk;
  wire [23:0]delta;
  wire [23:0]high_alpha;
  wire [23:0]high_beta;
  (* MARK_DEBUG *) wire ila_band_pending_valid;
  (* MARK_DEBUG *) wire ila_big_packet_valid;
  (* MARK_DEBUG *) wire [10:0]ila_bram_addr;
  (* MARK_DEBUG *) wire [31:0]ila_bram_data;
  (* MARK_DEBUG *) wire [3:0]ila_bram_we;
  (* MARK_DEBUG *) wire ila_raw_pending_valid;
  (* MARK_DEBUG *) wire [15:0]ila_rawdata;
  (* MARK_DEBUG *) wire ila_rawdata_valid;
  (* MARK_DEBUG *) wire [7:0]ila_rx_byte;
  (* MARK_DEBUG *) wire ila_rx_valid;
  (* MARK_DEBUG *) wire [3:0]ila_state;
  (* MARK_DEBUG *) wire [15:0]ila_write_seq;
  wire [23:0]low_alpha;
  wire [23:0]low_beta;
  wire [23:0]low_gamma;
  wire [7:0]med_pending;
  wire [7:0]meditation;
  wire [23:0]middle_gamma;
  wire [7:0]p_0_in;
  wire [15:0]p_9_in;
  wire [7:0]quality_pending;
  wire [15:0]raw_pending;
  wire raw_pending_valid_i_1_n_0;
  wire rst_n;
  wire [7:0]signal_quality;
  wire \status_seq[7]_i_2_n_0 ;
  wire [7:0]status_seq_reg;
  wire [23:0]theta;
  wire uart_rx;
  wire write_seq;
  wire \write_seq_reg[0]_i_1_n_0 ;
  wire \write_seq_reg[0]_i_1_n_1 ;
  wire \write_seq_reg[0]_i_1_n_2 ;
  wire \write_seq_reg[0]_i_1_n_3 ;
  wire \write_seq_reg[0]_i_1_n_4 ;
  wire \write_seq_reg[0]_i_1_n_5 ;
  wire \write_seq_reg[0]_i_1_n_6 ;
  wire \write_seq_reg[0]_i_1_n_7 ;
  wire \write_seq_reg[12]_i_1_n_1 ;
  wire \write_seq_reg[12]_i_1_n_2 ;
  wire \write_seq_reg[12]_i_1_n_3 ;
  wire \write_seq_reg[12]_i_1_n_4 ;
  wire \write_seq_reg[12]_i_1_n_5 ;
  wire \write_seq_reg[12]_i_1_n_6 ;
  wire \write_seq_reg[12]_i_1_n_7 ;
  wire \write_seq_reg[4]_i_1_n_0 ;
  wire \write_seq_reg[4]_i_1_n_1 ;
  wire \write_seq_reg[4]_i_1_n_2 ;
  wire \write_seq_reg[4]_i_1_n_3 ;
  wire \write_seq_reg[4]_i_1_n_4 ;
  wire \write_seq_reg[4]_i_1_n_5 ;
  wire \write_seq_reg[4]_i_1_n_6 ;
  wire \write_seq_reg[4]_i_1_n_7 ;
  wire \write_seq_reg[8]_i_1_n_0 ;
  wire \write_seq_reg[8]_i_1_n_1 ;
  wire \write_seq_reg[8]_i_1_n_2 ;
  wire \write_seq_reg[8]_i_1_n_3 ;
  wire \write_seq_reg[8]_i_1_n_4 ;
  wire \write_seq_reg[8]_i_1_n_5 ;
  wire \write_seq_reg[8]_i_1_n_6 ;
  wire \write_seq_reg[8]_i_1_n_7 ;
  wire [3:2]\NLW_bram_data_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_data_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_write_seq_reg[12]_i_1_CO_UNCONNECTED ;

  assign bram_addr[10:0] = ila_bram_addr;
  assign bram_data[31:0] = ila_bram_data;
  assign bram_we[0] = ila_bram_we[0];
  assign fd_matrix_ready = ila_big_packet_valid;
  assign td_matrix_ready = ila_rawdata_valid;
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    \FSM_onehot_state[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(ila_band_pending_valid),
        .I2(ila_raw_pending_valid),
        .I3(\bram_addr[10]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(write_seq),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(ila_raw_pending_valid),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(ila_raw_pending_valid),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .D(1'b0),
        .PRE(\bram_addr[10]_i_3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[11] ),
        .Q(\FSM_onehot_state_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(write_seq));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk),
        .CE(\FSM_onehot_state[12]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ));
  FDCE \att_pending_reg[0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(attention[0]),
        .Q(att_pending[0]));
  FDCE \att_pending_reg[1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(attention[1]),
        .Q(att_pending[1]));
  FDCE \att_pending_reg[2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(attention[2]),
        .Q(att_pending[2]));
  FDCE \att_pending_reg[3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(attention[3]),
        .Q(att_pending[3]));
  FDCE \att_pending_reg[4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(attention[4]),
        .Q(att_pending[4]));
  FDCE \att_pending_reg[5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(attention[5]),
        .Q(att_pending[5]));
  FDCE \att_pending_reg[6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(attention[6]),
        .Q(att_pending[6]));
  FDCE \att_pending_reg[7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(attention[7]),
        .Q(att_pending[7]));
  FDCE \band_pending_reg[0][0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[0]),
        .Q(\band_pending_reg[0] [0]));
  FDCE \band_pending_reg[0][10] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[10]),
        .Q(\band_pending_reg[0] [10]));
  FDCE \band_pending_reg[0][11] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[11]),
        .Q(\band_pending_reg[0] [11]));
  FDCE \band_pending_reg[0][12] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[12]),
        .Q(\band_pending_reg[0] [12]));
  FDCE \band_pending_reg[0][13] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[13]),
        .Q(\band_pending_reg[0] [13]));
  FDCE \band_pending_reg[0][14] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[14]),
        .Q(\band_pending_reg[0] [14]));
  FDCE \band_pending_reg[0][15] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[15]),
        .Q(\band_pending_reg[0] [15]));
  FDCE \band_pending_reg[0][16] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[16]),
        .Q(\band_pending_reg[0] [16]));
  FDCE \band_pending_reg[0][17] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[17]),
        .Q(\band_pending_reg[0] [17]));
  FDCE \band_pending_reg[0][18] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[18]),
        .Q(\band_pending_reg[0] [18]));
  FDCE \band_pending_reg[0][19] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[19]),
        .Q(\band_pending_reg[0] [19]));
  FDCE \band_pending_reg[0][1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[1]),
        .Q(\band_pending_reg[0] [1]));
  FDCE \band_pending_reg[0][20] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[20]),
        .Q(\band_pending_reg[0] [20]));
  FDCE \band_pending_reg[0][21] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[21]),
        .Q(\band_pending_reg[0] [21]));
  FDCE \band_pending_reg[0][22] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[22]),
        .Q(\band_pending_reg[0] [22]));
  FDCE \band_pending_reg[0][23] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[23]),
        .Q(\band_pending_reg[0] [23]));
  FDCE \band_pending_reg[0][2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[2]),
        .Q(\band_pending_reg[0] [2]));
  FDCE \band_pending_reg[0][3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[3]),
        .Q(\band_pending_reg[0] [3]));
  FDCE \band_pending_reg[0][4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[4]),
        .Q(\band_pending_reg[0] [4]));
  FDCE \band_pending_reg[0][5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[5]),
        .Q(\band_pending_reg[0] [5]));
  FDCE \band_pending_reg[0][6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[6]),
        .Q(\band_pending_reg[0] [6]));
  FDCE \band_pending_reg[0][7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[7]),
        .Q(\band_pending_reg[0] [7]));
  FDCE \band_pending_reg[0][8] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[8]),
        .Q(\band_pending_reg[0] [8]));
  FDCE \band_pending_reg[0][9] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(delta[9]),
        .Q(\band_pending_reg[0] [9]));
  FDCE \band_pending_reg[1][0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[0]),
        .Q(\band_pending_reg[1] [0]));
  FDCE \band_pending_reg[1][10] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[10]),
        .Q(\band_pending_reg[1] [10]));
  FDCE \band_pending_reg[1][11] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[11]),
        .Q(\band_pending_reg[1] [11]));
  FDCE \band_pending_reg[1][12] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[12]),
        .Q(\band_pending_reg[1] [12]));
  FDCE \band_pending_reg[1][13] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[13]),
        .Q(\band_pending_reg[1] [13]));
  FDCE \band_pending_reg[1][14] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[14]),
        .Q(\band_pending_reg[1] [14]));
  FDCE \band_pending_reg[1][15] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[15]),
        .Q(\band_pending_reg[1] [15]));
  FDCE \band_pending_reg[1][16] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[16]),
        .Q(\band_pending_reg[1] [16]));
  FDCE \band_pending_reg[1][17] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[17]),
        .Q(\band_pending_reg[1] [17]));
  FDCE \band_pending_reg[1][18] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[18]),
        .Q(\band_pending_reg[1] [18]));
  FDCE \band_pending_reg[1][19] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[19]),
        .Q(\band_pending_reg[1] [19]));
  FDCE \band_pending_reg[1][1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[1]),
        .Q(\band_pending_reg[1] [1]));
  FDCE \band_pending_reg[1][20] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[20]),
        .Q(\band_pending_reg[1] [20]));
  FDCE \band_pending_reg[1][21] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[21]),
        .Q(\band_pending_reg[1] [21]));
  FDCE \band_pending_reg[1][22] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[22]),
        .Q(\band_pending_reg[1] [22]));
  FDCE \band_pending_reg[1][23] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[23]),
        .Q(\band_pending_reg[1] [23]));
  FDCE \band_pending_reg[1][2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[2]),
        .Q(\band_pending_reg[1] [2]));
  FDCE \band_pending_reg[1][3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[3]),
        .Q(\band_pending_reg[1] [3]));
  FDCE \band_pending_reg[1][4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[4]),
        .Q(\band_pending_reg[1] [4]));
  FDCE \band_pending_reg[1][5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[5]),
        .Q(\band_pending_reg[1] [5]));
  FDCE \band_pending_reg[1][6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[6]),
        .Q(\band_pending_reg[1] [6]));
  FDCE \band_pending_reg[1][7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[7]),
        .Q(\band_pending_reg[1] [7]));
  FDCE \band_pending_reg[1][8] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[8]),
        .Q(\band_pending_reg[1] [8]));
  FDCE \band_pending_reg[1][9] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(theta[9]),
        .Q(\band_pending_reg[1] [9]));
  FDCE \band_pending_reg[2][0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[0]),
        .Q(\band_pending_reg[2] [0]));
  FDCE \band_pending_reg[2][10] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[10]),
        .Q(\band_pending_reg[2] [10]));
  FDCE \band_pending_reg[2][11] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[11]),
        .Q(\band_pending_reg[2] [11]));
  FDCE \band_pending_reg[2][12] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[12]),
        .Q(\band_pending_reg[2] [12]));
  FDCE \band_pending_reg[2][13] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[13]),
        .Q(\band_pending_reg[2] [13]));
  FDCE \band_pending_reg[2][14] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[14]),
        .Q(\band_pending_reg[2] [14]));
  FDCE \band_pending_reg[2][15] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[15]),
        .Q(\band_pending_reg[2] [15]));
  FDCE \band_pending_reg[2][16] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[16]),
        .Q(\band_pending_reg[2] [16]));
  FDCE \band_pending_reg[2][17] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[17]),
        .Q(\band_pending_reg[2] [17]));
  FDCE \band_pending_reg[2][18] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[18]),
        .Q(\band_pending_reg[2] [18]));
  FDCE \band_pending_reg[2][19] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[19]),
        .Q(\band_pending_reg[2] [19]));
  FDCE \band_pending_reg[2][1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[1]),
        .Q(\band_pending_reg[2] [1]));
  FDCE \band_pending_reg[2][20] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[20]),
        .Q(\band_pending_reg[2] [20]));
  FDCE \band_pending_reg[2][21] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[21]),
        .Q(\band_pending_reg[2] [21]));
  FDCE \band_pending_reg[2][22] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[22]),
        .Q(\band_pending_reg[2] [22]));
  FDCE \band_pending_reg[2][23] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[23]),
        .Q(\band_pending_reg[2] [23]));
  FDCE \band_pending_reg[2][2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[2]),
        .Q(\band_pending_reg[2] [2]));
  FDCE \band_pending_reg[2][3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[3]),
        .Q(\band_pending_reg[2] [3]));
  FDCE \band_pending_reg[2][4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[4]),
        .Q(\band_pending_reg[2] [4]));
  FDCE \band_pending_reg[2][5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[5]),
        .Q(\band_pending_reg[2] [5]));
  FDCE \band_pending_reg[2][6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[6]),
        .Q(\band_pending_reg[2] [6]));
  FDCE \band_pending_reg[2][7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[7]),
        .Q(\band_pending_reg[2] [7]));
  FDCE \band_pending_reg[2][8] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[8]),
        .Q(\band_pending_reg[2] [8]));
  FDCE \band_pending_reg[2][9] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_alpha[9]),
        .Q(\band_pending_reg[2] [9]));
  FDCE \band_pending_reg[3][0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[0]),
        .Q(\band_pending_reg[3] [0]));
  FDCE \band_pending_reg[3][10] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[10]),
        .Q(\band_pending_reg[3] [10]));
  FDCE \band_pending_reg[3][11] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[11]),
        .Q(\band_pending_reg[3] [11]));
  FDCE \band_pending_reg[3][12] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[12]),
        .Q(\band_pending_reg[3] [12]));
  FDCE \band_pending_reg[3][13] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[13]),
        .Q(\band_pending_reg[3] [13]));
  FDCE \band_pending_reg[3][14] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[14]),
        .Q(\band_pending_reg[3] [14]));
  FDCE \band_pending_reg[3][15] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[15]),
        .Q(\band_pending_reg[3] [15]));
  FDCE \band_pending_reg[3][16] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[16]),
        .Q(\band_pending_reg[3] [16]));
  FDCE \band_pending_reg[3][17] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[17]),
        .Q(\band_pending_reg[3] [17]));
  FDCE \band_pending_reg[3][18] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[18]),
        .Q(\band_pending_reg[3] [18]));
  FDCE \band_pending_reg[3][19] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[19]),
        .Q(\band_pending_reg[3] [19]));
  FDCE \band_pending_reg[3][1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[1]),
        .Q(\band_pending_reg[3] [1]));
  FDCE \band_pending_reg[3][20] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[20]),
        .Q(\band_pending_reg[3] [20]));
  FDCE \band_pending_reg[3][21] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[21]),
        .Q(\band_pending_reg[3] [21]));
  FDCE \band_pending_reg[3][22] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[22]),
        .Q(\band_pending_reg[3] [22]));
  FDCE \band_pending_reg[3][23] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[23]),
        .Q(\band_pending_reg[3] [23]));
  FDCE \band_pending_reg[3][2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[2]),
        .Q(\band_pending_reg[3] [2]));
  FDCE \band_pending_reg[3][3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[3]),
        .Q(\band_pending_reg[3] [3]));
  FDCE \band_pending_reg[3][4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[4]),
        .Q(\band_pending_reg[3] [4]));
  FDCE \band_pending_reg[3][5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[5]),
        .Q(\band_pending_reg[3] [5]));
  FDCE \band_pending_reg[3][6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[6]),
        .Q(\band_pending_reg[3] [6]));
  FDCE \band_pending_reg[3][7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[7]),
        .Q(\band_pending_reg[3] [7]));
  FDCE \band_pending_reg[3][8] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[8]),
        .Q(\band_pending_reg[3] [8]));
  FDCE \band_pending_reg[3][9] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_alpha[9]),
        .Q(\band_pending_reg[3] [9]));
  FDCE \band_pending_reg[4][0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[0]),
        .Q(\band_pending_reg[4] [0]));
  FDCE \band_pending_reg[4][10] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[10]),
        .Q(\band_pending_reg[4] [10]));
  FDCE \band_pending_reg[4][11] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[11]),
        .Q(\band_pending_reg[4] [11]));
  FDCE \band_pending_reg[4][12] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[12]),
        .Q(\band_pending_reg[4] [12]));
  FDCE \band_pending_reg[4][13] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[13]),
        .Q(\band_pending_reg[4] [13]));
  FDCE \band_pending_reg[4][14] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[14]),
        .Q(\band_pending_reg[4] [14]));
  FDCE \band_pending_reg[4][15] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[15]),
        .Q(\band_pending_reg[4] [15]));
  FDCE \band_pending_reg[4][16] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[16]),
        .Q(\band_pending_reg[4] [16]));
  FDCE \band_pending_reg[4][17] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[17]),
        .Q(\band_pending_reg[4] [17]));
  FDCE \band_pending_reg[4][18] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[18]),
        .Q(\band_pending_reg[4] [18]));
  FDCE \band_pending_reg[4][19] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[19]),
        .Q(\band_pending_reg[4] [19]));
  FDCE \band_pending_reg[4][1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[1]),
        .Q(\band_pending_reg[4] [1]));
  FDCE \band_pending_reg[4][20] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[20]),
        .Q(\band_pending_reg[4] [20]));
  FDCE \band_pending_reg[4][21] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[21]),
        .Q(\band_pending_reg[4] [21]));
  FDCE \band_pending_reg[4][22] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[22]),
        .Q(\band_pending_reg[4] [22]));
  FDCE \band_pending_reg[4][23] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[23]),
        .Q(\band_pending_reg[4] [23]));
  FDCE \band_pending_reg[4][2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[2]),
        .Q(\band_pending_reg[4] [2]));
  FDCE \band_pending_reg[4][3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[3]),
        .Q(\band_pending_reg[4] [3]));
  FDCE \band_pending_reg[4][4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[4]),
        .Q(\band_pending_reg[4] [4]));
  FDCE \band_pending_reg[4][5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[5]),
        .Q(\band_pending_reg[4] [5]));
  FDCE \band_pending_reg[4][6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[6]),
        .Q(\band_pending_reg[4] [6]));
  FDCE \band_pending_reg[4][7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[7]),
        .Q(\band_pending_reg[4] [7]));
  FDCE \band_pending_reg[4][8] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[8]),
        .Q(\band_pending_reg[4] [8]));
  FDCE \band_pending_reg[4][9] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_beta[9]),
        .Q(\band_pending_reg[4] [9]));
  FDCE \band_pending_reg[5][0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[0]),
        .Q(\band_pending_reg[5] [0]));
  FDCE \band_pending_reg[5][10] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[10]),
        .Q(\band_pending_reg[5] [10]));
  FDCE \band_pending_reg[5][11] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[11]),
        .Q(\band_pending_reg[5] [11]));
  FDCE \band_pending_reg[5][12] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[12]),
        .Q(\band_pending_reg[5] [12]));
  FDCE \band_pending_reg[5][13] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[13]),
        .Q(\band_pending_reg[5] [13]));
  FDCE \band_pending_reg[5][14] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[14]),
        .Q(\band_pending_reg[5] [14]));
  FDCE \band_pending_reg[5][15] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[15]),
        .Q(\band_pending_reg[5] [15]));
  FDCE \band_pending_reg[5][16] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[16]),
        .Q(\band_pending_reg[5] [16]));
  FDCE \band_pending_reg[5][17] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[17]),
        .Q(\band_pending_reg[5] [17]));
  FDCE \band_pending_reg[5][18] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[18]),
        .Q(\band_pending_reg[5] [18]));
  FDCE \band_pending_reg[5][19] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[19]),
        .Q(\band_pending_reg[5] [19]));
  FDCE \band_pending_reg[5][1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[1]),
        .Q(\band_pending_reg[5] [1]));
  FDCE \band_pending_reg[5][20] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[20]),
        .Q(\band_pending_reg[5] [20]));
  FDCE \band_pending_reg[5][21] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[21]),
        .Q(\band_pending_reg[5] [21]));
  FDCE \band_pending_reg[5][22] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[22]),
        .Q(\band_pending_reg[5] [22]));
  FDCE \band_pending_reg[5][23] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[23]),
        .Q(\band_pending_reg[5] [23]));
  FDCE \band_pending_reg[5][2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[2]),
        .Q(\band_pending_reg[5] [2]));
  FDCE \band_pending_reg[5][3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[3]),
        .Q(\band_pending_reg[5] [3]));
  FDCE \band_pending_reg[5][4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[4]),
        .Q(\band_pending_reg[5] [4]));
  FDCE \band_pending_reg[5][5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[5]),
        .Q(\band_pending_reg[5] [5]));
  FDCE \band_pending_reg[5][6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[6]),
        .Q(\band_pending_reg[5] [6]));
  FDCE \band_pending_reg[5][7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[7]),
        .Q(\band_pending_reg[5] [7]));
  FDCE \band_pending_reg[5][8] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[8]),
        .Q(\band_pending_reg[5] [8]));
  FDCE \band_pending_reg[5][9] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(high_beta[9]),
        .Q(\band_pending_reg[5] [9]));
  FDCE \band_pending_reg[6][0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[0]),
        .Q(\band_pending_reg[6] [0]));
  FDCE \band_pending_reg[6][10] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[10]),
        .Q(\band_pending_reg[6] [10]));
  FDCE \band_pending_reg[6][11] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[11]),
        .Q(\band_pending_reg[6] [11]));
  FDCE \band_pending_reg[6][12] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[12]),
        .Q(\band_pending_reg[6] [12]));
  FDCE \band_pending_reg[6][13] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[13]),
        .Q(\band_pending_reg[6] [13]));
  FDCE \band_pending_reg[6][14] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[14]),
        .Q(\band_pending_reg[6] [14]));
  FDCE \band_pending_reg[6][15] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[15]),
        .Q(\band_pending_reg[6] [15]));
  FDCE \band_pending_reg[6][16] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[16]),
        .Q(\band_pending_reg[6] [16]));
  FDCE \band_pending_reg[6][17] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[17]),
        .Q(\band_pending_reg[6] [17]));
  FDCE \band_pending_reg[6][18] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[18]),
        .Q(\band_pending_reg[6] [18]));
  FDCE \band_pending_reg[6][19] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[19]),
        .Q(\band_pending_reg[6] [19]));
  FDCE \band_pending_reg[6][1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[1]),
        .Q(\band_pending_reg[6] [1]));
  FDCE \band_pending_reg[6][20] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[20]),
        .Q(\band_pending_reg[6] [20]));
  FDCE \band_pending_reg[6][21] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[21]),
        .Q(\band_pending_reg[6] [21]));
  FDCE \band_pending_reg[6][22] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[22]),
        .Q(\band_pending_reg[6] [22]));
  FDCE \band_pending_reg[6][23] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[23]),
        .Q(\band_pending_reg[6] [23]));
  FDCE \band_pending_reg[6][2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[2]),
        .Q(\band_pending_reg[6] [2]));
  FDCE \band_pending_reg[6][3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[3]),
        .Q(\band_pending_reg[6] [3]));
  FDCE \band_pending_reg[6][4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[4]),
        .Q(\band_pending_reg[6] [4]));
  FDCE \band_pending_reg[6][5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[5]),
        .Q(\band_pending_reg[6] [5]));
  FDCE \band_pending_reg[6][6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[6]),
        .Q(\band_pending_reg[6] [6]));
  FDCE \band_pending_reg[6][7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[7]),
        .Q(\band_pending_reg[6] [7]));
  FDCE \band_pending_reg[6][8] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[8]),
        .Q(\band_pending_reg[6] [8]));
  FDCE \band_pending_reg[6][9] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(low_gamma[9]),
        .Q(\band_pending_reg[6] [9]));
  FDCE \band_pending_reg[7][0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[0]),
        .Q(\band_pending_reg[7] [0]));
  FDCE \band_pending_reg[7][10] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[10]),
        .Q(\band_pending_reg[7] [10]));
  FDCE \band_pending_reg[7][11] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[11]),
        .Q(\band_pending_reg[7] [11]));
  FDCE \band_pending_reg[7][12] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[12]),
        .Q(\band_pending_reg[7] [12]));
  FDCE \band_pending_reg[7][13] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[13]),
        .Q(\band_pending_reg[7] [13]));
  FDCE \band_pending_reg[7][14] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[14]),
        .Q(\band_pending_reg[7] [14]));
  FDCE \band_pending_reg[7][15] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[15]),
        .Q(\band_pending_reg[7] [15]));
  FDCE \band_pending_reg[7][16] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[16]),
        .Q(\band_pending_reg[7] [16]));
  FDCE \band_pending_reg[7][17] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[17]),
        .Q(\band_pending_reg[7] [17]));
  FDCE \band_pending_reg[7][18] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[18]),
        .Q(\band_pending_reg[7] [18]));
  FDCE \band_pending_reg[7][19] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[19]),
        .Q(\band_pending_reg[7] [19]));
  FDCE \band_pending_reg[7][1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[1]),
        .Q(\band_pending_reg[7] [1]));
  FDCE \band_pending_reg[7][20] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[20]),
        .Q(\band_pending_reg[7] [20]));
  FDCE \band_pending_reg[7][21] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[21]),
        .Q(\band_pending_reg[7] [21]));
  FDCE \band_pending_reg[7][22] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[22]),
        .Q(\band_pending_reg[7] [22]));
  FDCE \band_pending_reg[7][23] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[23]),
        .Q(\band_pending_reg[7] [23]));
  FDCE \band_pending_reg[7][2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[2]),
        .Q(\band_pending_reg[7] [2]));
  FDCE \band_pending_reg[7][3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[3]),
        .Q(\band_pending_reg[7] [3]));
  FDCE \band_pending_reg[7][4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[4]),
        .Q(\band_pending_reg[7] [4]));
  FDCE \band_pending_reg[7][5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[5]),
        .Q(\band_pending_reg[7] [5]));
  FDCE \band_pending_reg[7][6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[6]),
        .Q(\band_pending_reg[7] [6]));
  FDCE \band_pending_reg[7][7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[7]),
        .Q(\band_pending_reg[7] [7]));
  FDCE \band_pending_reg[7][8] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[8]),
        .Q(\band_pending_reg[7] [8]));
  FDCE \band_pending_reg[7][9] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(middle_gamma[9]),
        .Q(\band_pending_reg[7] [9]));
  LUT3 #(
    .INIT(8'h54)) 
    band_pending_valid_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(ila_big_packet_valid),
        .I2(ila_band_pending_valid),
        .O(band_pending_valid_i_1_n_0));
  FDCE band_pending_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(band_pending_valid_i_1_n_0),
        .Q(ila_band_pending_valid));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \bram_addr[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\bram_addr[0]_i_2_n_0 ),
        .O(\bram_addr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bram_addr[0]_i_2 
       (.I0(ila_write_seq[0]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_state_reg_n_0_[12] ),
        .I4(\FSM_onehot_state_reg_n_0_[8] ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\bram_addr[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr[10]_i_1 
       (.I0(\bram_addr[10]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bram_addr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \bram_addr[10]_i_2 
       (.I0(ila_write_seq[8]),
        .I1(ila_write_seq[9]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\bram_addr[10]_i_4_n_0 ),
        .O(\bram_addr[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[10]_i_3 
       (.I0(rst_n),
        .O(\bram_addr[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram_addr[10]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(write_seq),
        .I2(\bram_addr[10]_i_5_n_0 ),
        .I3(ila_state[3]),
        .O(\bram_addr[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bram_addr[10]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\bram_addr[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bram_addr[1]_i_1 
       (.I0(ila_write_seq[1]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\bram_addr[1]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\bram_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bram_addr[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .O(\bram_addr[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \bram_addr[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(ila_write_seq[2]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\bram_addr[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\bram_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \bram_addr[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\bram_addr[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \bram_addr[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(ila_write_seq[3]),
        .O(\bram_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ila_write_seq[4]),
        .O(\bram_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ila_write_seq[5]),
        .O(\bram_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ila_write_seq[6]),
        .O(\bram_addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ila_write_seq[7]),
        .O(\bram_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \bram_addr[8]_i_1 
       (.I0(ila_write_seq[8]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\bram_addr[10]_i_4_n_0 ),
        .O(\bram_addr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \bram_addr[9]_i_1 
       (.I0(ila_write_seq[8]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(ila_write_seq[9]),
        .O(\bram_addr[9]_i_1_n_0 ));
  FDCE \bram_addr_reg[0] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[0]_i_1_n_0 ),
        .Q(ila_bram_addr[0]));
  FDCE \bram_addr_reg[10] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[10]_i_2_n_0 ),
        .Q(ila_bram_addr[10]));
  FDCE \bram_addr_reg[1] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[1]_i_1_n_0 ),
        .Q(ila_bram_addr[1]));
  FDCE \bram_addr_reg[2] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[2]_i_1_n_0 ),
        .Q(ila_bram_addr[2]));
  FDCE \bram_addr_reg[3] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[3]_i_1_n_0 ),
        .Q(ila_bram_addr[3]));
  FDCE \bram_addr_reg[4] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[4]_i_1_n_0 ),
        .Q(ila_bram_addr[4]));
  FDCE \bram_addr_reg[5] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[5]_i_1_n_0 ),
        .Q(ila_bram_addr[5]));
  FDCE \bram_addr_reg[6] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[6]_i_1_n_0 ),
        .Q(ila_bram_addr[6]));
  FDCE \bram_addr_reg[7] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[7]_i_1_n_0 ),
        .Q(ila_bram_addr[7]));
  FDCE \bram_addr_reg[8] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[8]_i_1_n_0 ),
        .Q(ila_bram_addr[8]));
  FDCE \bram_addr_reg[9] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[9]_i_1_n_0 ),
        .Q(ila_bram_addr[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \bram_data[0]_i_1 
       (.I0(\bram_data[0]_i_2_n_0 ),
        .I1(\bram_data[0]_i_3_n_0 ),
        .I2(\bram_data[0]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(raw_pending[0]),
        .I5(\bram_data[0]_i_5_n_0 ),
        .O(\bram_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[0]_i_2 
       (.I0(\band_pending_reg[5] [0]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [0]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [0]),
        .O(\bram_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[0]_i_3 
       (.I0(\band_pending_reg[2] [0]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [0]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [0]),
        .O(\bram_data[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \bram_data[0]_i_4 
       (.I0(ila_write_seq[0]),
        .I1(write_seq),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[0]_i_5 
       (.I0(status_seq_reg[0]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [0]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [0]),
        .O(\bram_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[10]_i_1 
       (.I0(\bram_data[10]_i_2_n_0 ),
        .I1(\bram_data[10]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[10]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[10]_i_4_n_0 ),
        .O(\bram_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[10]_i_2 
       (.I0(\band_pending_reg[5] [10]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [10]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [10]),
        .O(\bram_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[10]_i_3 
       (.I0(\band_pending_reg[2] [10]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [10]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [10]),
        .O(\bram_data[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[10]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[10]),
        .I2(\bram_data[10]_i_5_n_0 ),
        .O(\bram_data[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[10]_i_5 
       (.I0(quality_pending[2]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [10]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [10]),
        .O(\bram_data[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[11]_i_1 
       (.I0(\bram_data[11]_i_2_n_0 ),
        .I1(\bram_data[11]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[11]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[11]_i_4_n_0 ),
        .O(\bram_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[11]_i_2 
       (.I0(\band_pending_reg[5] [11]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [11]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [11]),
        .O(\bram_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[11]_i_3 
       (.I0(\band_pending_reg[2] [11]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [11]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [11]),
        .O(\bram_data[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[11]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[11]),
        .I2(\bram_data[11]_i_5_n_0 ),
        .O(\bram_data[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[11]_i_5 
       (.I0(quality_pending[3]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [11]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [11]),
        .O(\bram_data[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[12]_i_1 
       (.I0(\bram_data[12]_i_2_n_0 ),
        .I1(\bram_data[12]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[12]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[12]_i_5_n_0 ),
        .O(\bram_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[12]_i_2 
       (.I0(\band_pending_reg[5] [12]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [12]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [12]),
        .O(\bram_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[12]_i_3 
       (.I0(\band_pending_reg[2] [12]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [12]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [12]),
        .O(\bram_data[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[12]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[12]),
        .I2(\bram_data[12]_i_6_n_0 ),
        .O(\bram_data[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[12]_i_6 
       (.I0(quality_pending[4]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [12]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [12]),
        .O(\bram_data[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[13]_i_1 
       (.I0(\bram_data[13]_i_2_n_0 ),
        .I1(\bram_data[13]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[13]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[13]_i_4_n_0 ),
        .O(\bram_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[13]_i_2 
       (.I0(\band_pending_reg[5] [13]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [13]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [13]),
        .O(\bram_data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[13]_i_3 
       (.I0(\band_pending_reg[2] [13]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [13]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [13]),
        .O(\bram_data[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[13]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[13]),
        .I2(\bram_data[13]_i_5_n_0 ),
        .O(\bram_data[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[13]_i_5 
       (.I0(quality_pending[5]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [13]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [13]),
        .O(\bram_data[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[14]_i_1 
       (.I0(\bram_data[14]_i_2_n_0 ),
        .I1(\bram_data[14]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[14]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[14]_i_4_n_0 ),
        .O(\bram_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[14]_i_2 
       (.I0(\band_pending_reg[5] [14]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [14]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [14]),
        .O(\bram_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[14]_i_3 
       (.I0(\band_pending_reg[2] [14]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [14]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [14]),
        .O(\bram_data[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[14]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[14]),
        .I2(\bram_data[14]_i_5_n_0 ),
        .O(\bram_data[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[14]_i_5 
       (.I0(quality_pending[6]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [14]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [14]),
        .O(\bram_data[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \bram_data[15]_i_1 
       (.I0(\bram_data[15]_i_2_n_0 ),
        .I1(write_seq),
        .I2(p_9_in[15]),
        .I3(\bram_data[15]_i_4_n_0 ),
        .I4(\bram_data[15]_i_5_n_0 ),
        .I5(\bram_data[15]_i_6_n_0 ),
        .O(\bram_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[15]_i_2 
       (.I0(\band_pending_reg[2] [15]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [15]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [15]),
        .O(\bram_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[15]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[15]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bram_data[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[15]_i_5 
       (.I0(quality_pending[7]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [15]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [15]),
        .O(\bram_data[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[15]_i_6 
       (.I0(\band_pending_reg[5] [15]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [15]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [15]),
        .O(\bram_data[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[16]_i_1 
       (.I0(\bram_data[16]_i_2_n_0 ),
        .I1(\bram_data[16]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[16]_i_4_n_0 ),
        .O(\bram_data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[16]_i_2 
       (.I0(\band_pending_reg[5] [16]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [16]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [16]),
        .O(\bram_data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[16]_i_3 
       (.I0(\band_pending_reg[2] [16]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [16]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [16]),
        .O(\bram_data[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[16]_i_4 
       (.I0(med_pending[0]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [16]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [16]),
        .O(\bram_data[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[17]_i_1 
       (.I0(\bram_data[17]_i_2_n_0 ),
        .I1(\bram_data[17]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[17]_i_4_n_0 ),
        .O(\bram_data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[17]_i_2 
       (.I0(\band_pending_reg[5] [17]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [17]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [17]),
        .O(\bram_data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[17]_i_3 
       (.I0(\band_pending_reg[2] [17]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [17]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [17]),
        .O(\bram_data[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[17]_i_4 
       (.I0(med_pending[1]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [17]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [17]),
        .O(\bram_data[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[18]_i_1 
       (.I0(\bram_data[18]_i_2_n_0 ),
        .I1(\bram_data[18]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[18]_i_4_n_0 ),
        .O(\bram_data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[18]_i_2 
       (.I0(\band_pending_reg[5] [18]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [18]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [18]),
        .O(\bram_data[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[18]_i_3 
       (.I0(\band_pending_reg[2] [18]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [18]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [18]),
        .O(\bram_data[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[18]_i_4 
       (.I0(med_pending[2]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [18]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [18]),
        .O(\bram_data[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[19]_i_1 
       (.I0(\bram_data[19]_i_2_n_0 ),
        .I1(\bram_data[19]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[19]_i_4_n_0 ),
        .O(\bram_data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[19]_i_2 
       (.I0(\band_pending_reg[5] [19]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [19]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [19]),
        .O(\bram_data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[19]_i_3 
       (.I0(\band_pending_reg[2] [19]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [19]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [19]),
        .O(\bram_data[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[19]_i_4 
       (.I0(med_pending[3]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [19]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [19]),
        .O(\bram_data[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[1]_i_1 
       (.I0(\bram_data[1]_i_2_n_0 ),
        .I1(\bram_data[1]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[1]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[1]_i_4_n_0 ),
        .O(\bram_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[1]_i_2 
       (.I0(\band_pending_reg[5] [1]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [1]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [1]),
        .O(\bram_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[1]_i_3 
       (.I0(\band_pending_reg[2] [1]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [1]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [1]),
        .O(\bram_data[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[1]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[1]),
        .I2(\bram_data[1]_i_5_n_0 ),
        .O(\bram_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[1]_i_5 
       (.I0(status_seq_reg[1]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [1]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [1]),
        .O(\bram_data[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[20]_i_1 
       (.I0(\bram_data[20]_i_2_n_0 ),
        .I1(\bram_data[20]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[20]_i_4_n_0 ),
        .O(\bram_data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[20]_i_2 
       (.I0(\band_pending_reg[5] [20]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [20]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [20]),
        .O(\bram_data[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[20]_i_3 
       (.I0(\band_pending_reg[2] [20]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [20]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [20]),
        .O(\bram_data[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[20]_i_4 
       (.I0(med_pending[4]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [20]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [20]),
        .O(\bram_data[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[21]_i_1 
       (.I0(\bram_data[21]_i_2_n_0 ),
        .I1(\bram_data[21]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[21]_i_4_n_0 ),
        .O(\bram_data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[21]_i_2 
       (.I0(\band_pending_reg[5] [21]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [21]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [21]),
        .O(\bram_data[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[21]_i_3 
       (.I0(\band_pending_reg[2] [21]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [21]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [21]),
        .O(\bram_data[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[21]_i_4 
       (.I0(med_pending[5]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [21]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [21]),
        .O(\bram_data[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[22]_i_1 
       (.I0(\bram_data[22]_i_2_n_0 ),
        .I1(\bram_data[22]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[22]_i_4_n_0 ),
        .O(\bram_data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[22]_i_2 
       (.I0(\band_pending_reg[5] [22]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [22]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [22]),
        .O(\bram_data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[22]_i_3 
       (.I0(\band_pending_reg[2] [22]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [22]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [22]),
        .O(\bram_data[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[22]_i_4 
       (.I0(med_pending[6]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [22]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [22]),
        .O(\bram_data[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[23]_i_1 
       (.I0(\bram_data[23]_i_2_n_0 ),
        .I1(\bram_data[23]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[23]_i_4_n_0 ),
        .O(\bram_data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[23]_i_2 
       (.I0(\band_pending_reg[5] [23]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [23]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [23]),
        .O(\bram_data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[23]_i_3 
       (.I0(\band_pending_reg[2] [23]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [23]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [23]),
        .O(\bram_data[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[23]_i_4 
       (.I0(med_pending[7]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [23]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [23]),
        .O(\bram_data[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bram_data[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(att_pending[0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bram_data[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bram_data[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(att_pending[1]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bram_data[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bram_data[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(att_pending[2]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bram_data[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bram_data[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(att_pending[3]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bram_data[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bram_data[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(att_pending[4]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bram_data[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bram_data[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(att_pending[5]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bram_data[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[2]_i_1 
       (.I0(\bram_data[2]_i_2_n_0 ),
        .I1(\bram_data[2]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[2]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[2]_i_4_n_0 ),
        .O(\bram_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[2]_i_2 
       (.I0(\band_pending_reg[5] [2]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [2]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [2]),
        .O(\bram_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[2]_i_3 
       (.I0(\band_pending_reg[2] [2]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [2]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [2]),
        .O(\bram_data[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[2]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[2]),
        .I2(\bram_data[2]_i_5_n_0 ),
        .O(\bram_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[2]_i_5 
       (.I0(status_seq_reg[2]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [2]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [2]),
        .O(\bram_data[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bram_data[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(att_pending[6]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bram_data[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \bram_data[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(att_pending[7]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(raw_pending[15]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bram_data[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[3]_i_1 
       (.I0(\bram_data[3]_i_2_n_0 ),
        .I1(\bram_data[3]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[3]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[3]_i_4_n_0 ),
        .O(\bram_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[3]_i_2 
       (.I0(\band_pending_reg[5] [3]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [3]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [3]),
        .O(\bram_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[3]_i_3 
       (.I0(\band_pending_reg[2] [3]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [3]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [3]),
        .O(\bram_data[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[3]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[3]),
        .I2(\bram_data[3]_i_5_n_0 ),
        .O(\bram_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[3]_i_5 
       (.I0(status_seq_reg[3]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [3]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [3]),
        .O(\bram_data[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[4]_i_1 
       (.I0(\bram_data[4]_i_2_n_0 ),
        .I1(\bram_data[4]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[4]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[4]_i_5_n_0 ),
        .O(\bram_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[4]_i_2 
       (.I0(\band_pending_reg[5] [4]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [4]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [4]),
        .O(\bram_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[4]_i_3 
       (.I0(\band_pending_reg[2] [4]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [4]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [4]),
        .O(\bram_data[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[4]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[4]),
        .I2(\bram_data[4]_i_6_n_0 ),
        .O(\bram_data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[4]_i_6 
       (.I0(status_seq_reg[4]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [4]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [4]),
        .O(\bram_data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[5]_i_1 
       (.I0(\bram_data[5]_i_2_n_0 ),
        .I1(\bram_data[5]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[5]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[5]_i_4_n_0 ),
        .O(\bram_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[5]_i_2 
       (.I0(\band_pending_reg[5] [5]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [5]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [5]),
        .O(\bram_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[5]_i_3 
       (.I0(\band_pending_reg[2] [5]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [5]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [5]),
        .O(\bram_data[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[5]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[5]),
        .I2(\bram_data[5]_i_5_n_0 ),
        .O(\bram_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[5]_i_5 
       (.I0(status_seq_reg[5]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [5]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [5]),
        .O(\bram_data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[6]_i_1 
       (.I0(\bram_data[6]_i_2_n_0 ),
        .I1(\bram_data[6]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[6]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[6]_i_4_n_0 ),
        .O(\bram_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[6]_i_2 
       (.I0(\band_pending_reg[5] [6]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [6]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [6]),
        .O(\bram_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[6]_i_3 
       (.I0(\band_pending_reg[2] [6]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [6]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [6]),
        .O(\bram_data[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[6]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[6]),
        .I2(\bram_data[6]_i_5_n_0 ),
        .O(\bram_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[6]_i_5 
       (.I0(status_seq_reg[6]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [6]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [6]),
        .O(\bram_data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[7]_i_1 
       (.I0(\bram_data[7]_i_2_n_0 ),
        .I1(\bram_data[7]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[7]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[7]_i_4_n_0 ),
        .O(\bram_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[7]_i_2 
       (.I0(\band_pending_reg[5] [7]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [7]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [7]),
        .O(\bram_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[7]_i_3 
       (.I0(\band_pending_reg[2] [7]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [7]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [7]),
        .O(\bram_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[7]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[7]),
        .I2(\bram_data[7]_i_5_n_0 ),
        .O(\bram_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[7]_i_5 
       (.I0(status_seq_reg[7]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [7]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [7]),
        .O(\bram_data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[8]_i_1 
       (.I0(\bram_data[8]_i_2_n_0 ),
        .I1(\bram_data[8]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[8]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[8]_i_5_n_0 ),
        .O(\bram_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[8]_i_2 
       (.I0(\band_pending_reg[5] [8]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [8]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [8]),
        .O(\bram_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[8]_i_3 
       (.I0(\band_pending_reg[2] [8]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [8]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [8]),
        .O(\bram_data[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[8]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[8]),
        .I2(\bram_data[8]_i_6_n_0 ),
        .O(\bram_data[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[8]_i_6 
       (.I0(quality_pending[0]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [8]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [8]),
        .O(\bram_data[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \bram_data[9]_i_1 
       (.I0(\bram_data[9]_i_2_n_0 ),
        .I1(\bram_data[9]_i_3_n_0 ),
        .I2(write_seq),
        .I3(p_9_in[9]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\bram_data[9]_i_4_n_0 ),
        .O(\bram_data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[9]_i_2 
       (.I0(\band_pending_reg[5] [9]),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\band_pending_reg[4] [9]),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\band_pending_reg[3] [9]),
        .O(\bram_data[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[9]_i_3 
       (.I0(\band_pending_reg[2] [9]),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\band_pending_reg[1] [9]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\band_pending_reg[0] [9]),
        .O(\bram_data[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bram_data[9]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(raw_pending[9]),
        .I2(\bram_data[9]_i_5_n_0 ),
        .O(\bram_data[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_data[9]_i_5 
       (.I0(quality_pending[1]),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\band_pending_reg[7] [9]),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(\band_pending_reg[6] [9]),
        .O(\bram_data[9]_i_5_n_0 ));
  FDCE \bram_data_reg[0] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[0]_i_1_n_0 ),
        .Q(ila_bram_data[0]));
  FDCE \bram_data_reg[10] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[10]_i_1_n_0 ),
        .Q(ila_bram_data[10]));
  FDCE \bram_data_reg[11] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[11]_i_1_n_0 ),
        .Q(ila_bram_data[11]));
  FDCE \bram_data_reg[12] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[12]_i_1_n_0 ),
        .Q(ila_bram_data[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_data_reg[12]_i_4 
       (.CI(\bram_data_reg[8]_i_4_n_0 ),
        .CO({\bram_data_reg[12]_i_4_n_0 ,\bram_data_reg[12]_i_4_n_1 ,\bram_data_reg[12]_i_4_n_2 ,\bram_data_reg[12]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_9_in[12:9]),
        .S(ila_write_seq[12:9]));
  FDCE \bram_data_reg[13] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[13]_i_1_n_0 ),
        .Q(ila_bram_data[13]));
  FDCE \bram_data_reg[14] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[14]_i_1_n_0 ),
        .Q(ila_bram_data[14]));
  FDCE \bram_data_reg[15] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[15]_i_1_n_0 ),
        .Q(ila_bram_data[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_data_reg[15]_i_3 
       (.CI(\bram_data_reg[12]_i_4_n_0 ),
        .CO({\NLW_bram_data_reg[15]_i_3_CO_UNCONNECTED [3:2],\bram_data_reg[15]_i_3_n_2 ,\bram_data_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_data_reg[15]_i_3_O_UNCONNECTED [3],p_9_in[15:13]}),
        .S({1'b0,ila_write_seq[15:13]}));
  FDCE \bram_data_reg[16] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[16]_i_1_n_0 ),
        .Q(ila_bram_data[16]));
  FDCE \bram_data_reg[17] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[17]_i_1_n_0 ),
        .Q(ila_bram_data[17]));
  FDCE \bram_data_reg[18] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[18]_i_1_n_0 ),
        .Q(ila_bram_data[18]));
  FDCE \bram_data_reg[19] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[19]_i_1_n_0 ),
        .Q(ila_bram_data[19]));
  FDCE \bram_data_reg[1] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[1]_i_1_n_0 ),
        .Q(ila_bram_data[1]));
  FDCE \bram_data_reg[20] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[20]_i_1_n_0 ),
        .Q(ila_bram_data[20]));
  FDCE \bram_data_reg[21] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[21]_i_1_n_0 ),
        .Q(ila_bram_data[21]));
  FDCE \bram_data_reg[22] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[22]_i_1_n_0 ),
        .Q(ila_bram_data[22]));
  FDCE \bram_data_reg[23] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[23]_i_1_n_0 ),
        .Q(ila_bram_data[23]));
  FDCE \bram_data_reg[24] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[24]_i_1_n_0 ),
        .Q(ila_bram_data[24]));
  FDCE \bram_data_reg[25] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[25]_i_1_n_0 ),
        .Q(ila_bram_data[25]));
  FDCE \bram_data_reg[26] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[26]_i_1_n_0 ),
        .Q(ila_bram_data[26]));
  FDCE \bram_data_reg[27] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[27]_i_1_n_0 ),
        .Q(ila_bram_data[27]));
  FDCE \bram_data_reg[28] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[28]_i_1_n_0 ),
        .Q(ila_bram_data[28]));
  FDCE \bram_data_reg[29] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[29]_i_1_n_0 ),
        .Q(ila_bram_data[29]));
  FDCE \bram_data_reg[2] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[2]_i_1_n_0 ),
        .Q(ila_bram_data[2]));
  FDCE \bram_data_reg[30] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[30]_i_1_n_0 ),
        .Q(ila_bram_data[30]));
  FDCE \bram_data_reg[31] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[31]_i_1_n_0 ),
        .Q(ila_bram_data[31]));
  FDCE \bram_data_reg[3] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[3]_i_1_n_0 ),
        .Q(ila_bram_data[3]));
  FDCE \bram_data_reg[4] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[4]_i_1_n_0 ),
        .Q(ila_bram_data[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_data_reg[4]_i_4 
       (.CI(1'b0),
        .CO({\bram_data_reg[4]_i_4_n_0 ,\bram_data_reg[4]_i_4_n_1 ,\bram_data_reg[4]_i_4_n_2 ,\bram_data_reg[4]_i_4_n_3 }),
        .CYINIT(ila_write_seq[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_9_in[4:1]),
        .S(ila_write_seq[4:1]));
  FDCE \bram_data_reg[5] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[5]_i_1_n_0 ),
        .Q(ila_bram_data[5]));
  FDCE \bram_data_reg[6] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[6]_i_1_n_0 ),
        .Q(ila_bram_data[6]));
  FDCE \bram_data_reg[7] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[7]_i_1_n_0 ),
        .Q(ila_bram_data[7]));
  FDCE \bram_data_reg[8] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[8]_i_1_n_0 ),
        .Q(ila_bram_data[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_data_reg[8]_i_4 
       (.CI(\bram_data_reg[4]_i_4_n_0 ),
        .CO({\bram_data_reg[8]_i_4_n_0 ,\bram_data_reg[8]_i_4_n_1 ,\bram_data_reg[8]_i_4_n_2 ,\bram_data_reg[8]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_9_in[8:5]),
        .S(ila_write_seq[8:5]));
  FDCE \bram_data_reg[9] 
       (.C(clk),
        .CE(\bram_addr[10]_i_1_n_0 ),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_data[9]_i_1_n_0 ),
        .Q(ila_bram_data[9]));
  FDCE \bram_we_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\bram_addr[10]_i_1_n_0 ),
        .Q(ila_bram_we[0]));
  LUT1 #(
    .INIT(2'h2)) 
    ila_bram_we_inst
       (.I0(ila_bram_we[0]),
        .O(ila_bram_we[3]));
  LUT1 #(
    .INIT(2'h2)) 
    ila_bram_we_inst__0
       (.I0(ila_bram_we[0]),
        .O(ila_bram_we[2]));
  LUT1 #(
    .INIT(2'h2)) 
    ila_bram_we_inst__1
       (.I0(ila_bram_we[0]),
        .O(ila_bram_we[1]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ila_state_inferred_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_state_reg_n_0_[12] ),
        .I4(\FSM_onehot_state_reg_n_0_[11] ),
        .O(ila_state[3]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ila_state_inferred_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[12] ),
        .O(ila_state[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ila_state_inferred_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(write_seq),
        .O(ila_state[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ila_state_inferred_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(write_seq),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(ila_state[0]));
  FDCE \med_pending_reg[0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(meditation[0]),
        .Q(med_pending[0]));
  FDCE \med_pending_reg[1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(meditation[1]),
        .Q(med_pending[1]));
  FDCE \med_pending_reg[2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(meditation[2]),
        .Q(med_pending[2]));
  FDCE \med_pending_reg[3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(meditation[3]),
        .Q(med_pending[3]));
  FDCE \med_pending_reg[4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(meditation[4]),
        .Q(med_pending[4]));
  FDCE \med_pending_reg[5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(meditation[5]),
        .Q(med_pending[5]));
  FDCE \med_pending_reg[6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(meditation[6]),
        .Q(med_pending[6]));
  FDCE \med_pending_reg[7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(meditation[7]),
        .Q(med_pending[7]));
  FDCE \quality_pending_reg[0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(signal_quality[0]),
        .Q(quality_pending[0]));
  FDCE \quality_pending_reg[1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(signal_quality[1]),
        .Q(quality_pending[1]));
  FDCE \quality_pending_reg[2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(signal_quality[2]),
        .Q(quality_pending[2]));
  FDCE \quality_pending_reg[3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(signal_quality[3]),
        .Q(quality_pending[3]));
  FDCE \quality_pending_reg[4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(signal_quality[4]),
        .Q(quality_pending[4]));
  FDCE \quality_pending_reg[5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(signal_quality[5]),
        .Q(quality_pending[5]));
  FDCE \quality_pending_reg[6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(signal_quality[6]),
        .Q(quality_pending[6]));
  FDCE \quality_pending_reg[7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(signal_quality[7]),
        .Q(quality_pending[7]));
  FDCE \raw_pending_reg[0] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[0]),
        .Q(raw_pending[0]));
  FDCE \raw_pending_reg[10] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[10]),
        .Q(raw_pending[10]));
  FDCE \raw_pending_reg[11] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[11]),
        .Q(raw_pending[11]));
  FDCE \raw_pending_reg[12] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[12]),
        .Q(raw_pending[12]));
  FDCE \raw_pending_reg[13] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[13]),
        .Q(raw_pending[13]));
  FDCE \raw_pending_reg[14] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[14]),
        .Q(raw_pending[14]));
  FDCE \raw_pending_reg[15] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[15]),
        .Q(raw_pending[15]));
  FDCE \raw_pending_reg[1] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[1]),
        .Q(raw_pending[1]));
  FDCE \raw_pending_reg[2] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[2]),
        .Q(raw_pending[2]));
  FDCE \raw_pending_reg[3] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[3]),
        .Q(raw_pending[3]));
  FDCE \raw_pending_reg[4] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[4]),
        .Q(raw_pending[4]));
  FDCE \raw_pending_reg[5] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[5]),
        .Q(raw_pending[5]));
  FDCE \raw_pending_reg[6] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[6]),
        .Q(raw_pending[6]));
  FDCE \raw_pending_reg[7] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[7]),
        .Q(raw_pending[7]));
  FDCE \raw_pending_reg[8] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[8]),
        .Q(raw_pending[8]));
  FDCE \raw_pending_reg[9] 
       (.C(clk),
        .CE(ila_rawdata_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(ila_rawdata[9]),
        .Q(raw_pending[9]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h54)) 
    raw_pending_valid_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ila_rawdata_valid),
        .I2(ila_raw_pending_valid),
        .O(raw_pending_valid_i_1_n_0));
  FDCE raw_pending_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(raw_pending_valid_i_1_n_0),
        .Q(ila_raw_pending_valid));
  LUT1 #(
    .INIT(2'h1)) 
    \status_seq[0]_i_1 
       (.I0(status_seq_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \status_seq[1]_i_1 
       (.I0(status_seq_reg[0]),
        .I1(status_seq_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \status_seq[2]_i_1 
       (.I0(status_seq_reg[1]),
        .I1(status_seq_reg[0]),
        .I2(status_seq_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \status_seq[3]_i_1 
       (.I0(status_seq_reg[2]),
        .I1(status_seq_reg[0]),
        .I2(status_seq_reg[1]),
        .I3(status_seq_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \status_seq[4]_i_1 
       (.I0(status_seq_reg[3]),
        .I1(status_seq_reg[1]),
        .I2(status_seq_reg[0]),
        .I3(status_seq_reg[2]),
        .I4(status_seq_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \status_seq[5]_i_1 
       (.I0(status_seq_reg[4]),
        .I1(status_seq_reg[2]),
        .I2(status_seq_reg[0]),
        .I3(status_seq_reg[1]),
        .I4(status_seq_reg[3]),
        .I5(status_seq_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \status_seq[6]_i_1 
       (.I0(\status_seq[7]_i_2_n_0 ),
        .I1(status_seq_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \status_seq[7]_i_1 
       (.I0(status_seq_reg[6]),
        .I1(\status_seq[7]_i_2_n_0 ),
        .I2(status_seq_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \status_seq[7]_i_2 
       (.I0(status_seq_reg[4]),
        .I1(status_seq_reg[2]),
        .I2(status_seq_reg[0]),
        .I3(status_seq_reg[1]),
        .I4(status_seq_reg[3]),
        .I5(status_seq_reg[5]),
        .O(\status_seq[7]_i_2_n_0 ));
  FDCE \status_seq_reg[0] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(p_0_in[0]),
        .Q(status_seq_reg[0]));
  FDCE \status_seq_reg[1] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(p_0_in[1]),
        .Q(status_seq_reg[1]));
  FDCE \status_seq_reg[2] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(p_0_in[2]),
        .Q(status_seq_reg[2]));
  FDCE \status_seq_reg[3] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(p_0_in[3]),
        .Q(status_seq_reg[3]));
  FDCE \status_seq_reg[4] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(p_0_in[4]),
        .Q(status_seq_reg[4]));
  FDCE \status_seq_reg[5] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(p_0_in[5]),
        .Q(status_seq_reg[5]));
  FDCE \status_seq_reg[6] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(p_0_in[6]),
        .Q(status_seq_reg[6]));
  FDCE \status_seq_reg[7] 
       (.C(clk),
        .CE(ila_big_packet_valid),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(p_0_in[7]),
        .Q(status_seq_reg[7]));
  (* KEEP_HIERARCHY = "soft" *) 
  (* S_CHECK = "3'b100" *) 
  (* S_IDLE = "3'b000" *) 
  (* S_LENGTH = "3'b010" *) 
  (* S_PAYLOAD = "3'b011" *) 
  (* S_SYNC2 = "3'b001" *) 
  SYSTEM_eeg_pl_top_0_1_tgam_parser u_tgam_parser
       (.attention(attention),
        .big_packet_valid(ila_big_packet_valid),
        .clk(clk),
        .delta(delta),
        .high_alpha(high_alpha),
        .high_beta(high_beta),
        .low_alpha(low_alpha),
        .low_beta(low_beta),
        .low_gamma(low_gamma),
        .meditation(meditation),
        .middle_gamma(middle_gamma),
        .rawdata(ila_rawdata),
        .rawdata_valid(ila_rawdata_valid),
        .rst_n(rst_n),
        .rx_byte(ila_rx_byte),
        .rx_valid(ila_rx_valid),
        .signal_quality(signal_quality),
        .theta(theta));
  (* CLKS_PER_BIT = "1736" *) 
  (* DATA = "2'b10" *) 
  (* HALF_CLKS = "868" *) 
  (* IDLE = "2'b00" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* START = "2'b01" *) 
  (* STOP = "2'b11" *) 
  SYSTEM_eeg_pl_top_0_1_uart_rx u_uart_rx
       (.clk(clk),
        .data(ila_rx_byte),
        .rst_n(rst_n),
        .rx(uart_rx),
        .valid(ila_rx_valid));
  LUT1 #(
    .INIT(2'h1)) 
    \write_seq[0]_i_2 
       (.I0(ila_write_seq[0]),
        .O(p_9_in[0]));
  FDCE \write_seq_reg[0] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[0]_i_1_n_7 ),
        .Q(ila_write_seq[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \write_seq_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\write_seq_reg[0]_i_1_n_0 ,\write_seq_reg[0]_i_1_n_1 ,\write_seq_reg[0]_i_1_n_2 ,\write_seq_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\write_seq_reg[0]_i_1_n_4 ,\write_seq_reg[0]_i_1_n_5 ,\write_seq_reg[0]_i_1_n_6 ,\write_seq_reg[0]_i_1_n_7 }),
        .S({ila_write_seq[3:1],p_9_in[0]}));
  FDCE \write_seq_reg[10] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[8]_i_1_n_5 ),
        .Q(ila_write_seq[10]));
  FDCE \write_seq_reg[11] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[8]_i_1_n_4 ),
        .Q(ila_write_seq[11]));
  FDCE \write_seq_reg[12] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[12]_i_1_n_7 ),
        .Q(ila_write_seq[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \write_seq_reg[12]_i_1 
       (.CI(\write_seq_reg[8]_i_1_n_0 ),
        .CO({\NLW_write_seq_reg[12]_i_1_CO_UNCONNECTED [3],\write_seq_reg[12]_i_1_n_1 ,\write_seq_reg[12]_i_1_n_2 ,\write_seq_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_seq_reg[12]_i_1_n_4 ,\write_seq_reg[12]_i_1_n_5 ,\write_seq_reg[12]_i_1_n_6 ,\write_seq_reg[12]_i_1_n_7 }),
        .S(ila_write_seq[15:12]));
  FDCE \write_seq_reg[13] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[12]_i_1_n_6 ),
        .Q(ila_write_seq[13]));
  FDCE \write_seq_reg[14] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[12]_i_1_n_5 ),
        .Q(ila_write_seq[14]));
  FDCE \write_seq_reg[15] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[12]_i_1_n_4 ),
        .Q(ila_write_seq[15]));
  FDCE \write_seq_reg[1] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[0]_i_1_n_6 ),
        .Q(ila_write_seq[1]));
  FDCE \write_seq_reg[2] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[0]_i_1_n_5 ),
        .Q(ila_write_seq[2]));
  FDCE \write_seq_reg[3] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[0]_i_1_n_4 ),
        .Q(ila_write_seq[3]));
  FDCE \write_seq_reg[4] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[4]_i_1_n_7 ),
        .Q(ila_write_seq[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \write_seq_reg[4]_i_1 
       (.CI(\write_seq_reg[0]_i_1_n_0 ),
        .CO({\write_seq_reg[4]_i_1_n_0 ,\write_seq_reg[4]_i_1_n_1 ,\write_seq_reg[4]_i_1_n_2 ,\write_seq_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_seq_reg[4]_i_1_n_4 ,\write_seq_reg[4]_i_1_n_5 ,\write_seq_reg[4]_i_1_n_6 ,\write_seq_reg[4]_i_1_n_7 }),
        .S(ila_write_seq[7:4]));
  FDCE \write_seq_reg[5] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[4]_i_1_n_6 ),
        .Q(ila_write_seq[5]));
  FDCE \write_seq_reg[6] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[4]_i_1_n_5 ),
        .Q(ila_write_seq[6]));
  FDCE \write_seq_reg[7] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[4]_i_1_n_4 ),
        .Q(ila_write_seq[7]));
  FDCE \write_seq_reg[8] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[8]_i_1_n_7 ),
        .Q(ila_write_seq[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \write_seq_reg[8]_i_1 
       (.CI(\write_seq_reg[4]_i_1_n_0 ),
        .CO({\write_seq_reg[8]_i_1_n_0 ,\write_seq_reg[8]_i_1_n_1 ,\write_seq_reg[8]_i_1_n_2 ,\write_seq_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_seq_reg[8]_i_1_n_4 ,\write_seq_reg[8]_i_1_n_5 ,\write_seq_reg[8]_i_1_n_6 ,\write_seq_reg[8]_i_1_n_7 }),
        .S(ila_write_seq[11:8]));
  FDCE \write_seq_reg[9] 
       (.C(clk),
        .CE(write_seq),
        .CLR(\bram_addr[10]_i_3_n_0 ),
        .D(\write_seq_reg[8]_i_1_n_6 ),
        .Q(ila_write_seq[9]));
endmodule

(* ORIG_REF_NAME = "tgam_parser" *) (* S_CHECK = "3'b100" *) (* S_IDLE = "3'b000" *) 
(* S_LENGTH = "3'b010" *) (* S_PAYLOAD = "3'b011" *) (* S_SYNC2 = "3'b001" *) 
module SYSTEM_eeg_pl_top_0_1_tgam_parser
   (clk,
    rst_n,
    rx_byte,
    rx_valid,
    rawdata,
    rawdata_valid,
    delta,
    theta,
    low_alpha,
    high_alpha,
    low_beta,
    high_beta,
    low_gamma,
    middle_gamma,
    attention,
    meditation,
    signal_quality,
    big_packet_valid);
  input clk;
  input rst_n;
  input [7:0]rx_byte;
  input rx_valid;
  output [15:0]rawdata;
  output rawdata_valid;
  output [23:0]delta;
  output [23:0]theta;
  output [23:0]low_alpha;
  output [23:0]high_alpha;
  output [23:0]low_beta;
  output [23:0]high_beta;
  output [23:0]low_gamma;
  output [23:0]middle_gamma;
  output [7:0]attention;
  output [7:0]meditation;
  output [7:0]signal_quality;
  output big_packet_valid;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_12_n_0 ;
  wire \FSM_sequential_state[2]_i_13_n_0 ;
  wire \FSM_sequential_state[2]_i_15_n_0 ;
  wire \FSM_sequential_state[2]_i_16_n_0 ;
  wire \FSM_sequential_state[2]_i_17_n_0 ;
  wire \FSM_sequential_state[2]_i_18_n_0 ;
  wire \FSM_sequential_state[2]_i_19_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire [7:0]attention;
  wire big_packet_valid;
  wire big_packet_valid0_out;
  wire [7:0]checksum_sum;
  wire \checksum_sum[3]_i_3_n_0 ;
  wire \checksum_sum[3]_i_4_n_0 ;
  wire \checksum_sum[3]_i_5_n_0 ;
  wire \checksum_sum[3]_i_6_n_0 ;
  wire \checksum_sum[7]_i_1_n_0 ;
  wire \checksum_sum[7]_i_4_n_0 ;
  wire \checksum_sum[7]_i_5_n_0 ;
  wire \checksum_sum[7]_i_6_n_0 ;
  wire \checksum_sum[7]_i_7_n_0 ;
  wire \checksum_sum_reg[3]_i_2_n_0 ;
  wire \checksum_sum_reg[3]_i_2_n_1 ;
  wire \checksum_sum_reg[3]_i_2_n_2 ;
  wire \checksum_sum_reg[3]_i_2_n_3 ;
  wire \checksum_sum_reg[7]_i_3_n_1 ;
  wire \checksum_sum_reg[7]_i_3_n_2 ;
  wire \checksum_sum_reg[7]_i_3_n_3 ;
  wire \checksum_sum_reg_n_0_[0] ;
  wire \checksum_sum_reg_n_0_[1] ;
  wire \checksum_sum_reg_n_0_[2] ;
  wire \checksum_sum_reg_n_0_[3] ;
  wire \checksum_sum_reg_n_0_[4] ;
  wire \checksum_sum_reg_n_0_[5] ;
  wire \checksum_sum_reg_n_0_[6] ;
  wire \checksum_sum_reg_n_0_[7] ;
  wire clk;
  wire [23:0]delta;
  wire \delta[23]_i_10_n_0 ;
  wire \delta[23]_i_11_n_0 ;
  wire \delta[23]_i_12_n_0 ;
  wire \delta[23]_i_13_n_0 ;
  wire \delta[23]_i_2_n_0 ;
  wire \delta[23]_i_3_n_0 ;
  wire \delta[23]_i_4_n_0 ;
  wire \delta[23]_i_5_n_0 ;
  wire \delta[23]_i_6_n_0 ;
  wire \delta[23]_i_7_n_0 ;
  wire \delta[23]_i_8_n_0 ;
  wire \delta[23]_i_9_n_0 ;
  wire [23:0]high_alpha;
  wire [23:0]high_beta;
  wire [7:0]in42;
  wire [23:0]low_alpha;
  wire [23:0]low_beta;
  wire [23:0]low_gamma;
  wire [7:0]meditation;
  wire [23:0]middle_gamma;
  wire p_1_in;
  wire \payload[0][7]_i_1_n_0 ;
  wire \payload[0][7]_i_2_n_0 ;
  wire \payload[0][7]_i_3_n_0 ;
  wire \payload[0][7]_i_4_n_0 ;
  wire \payload[0][7]_i_5_n_0 ;
  wire \payload[10][7]_i_1_n_0 ;
  wire \payload[11][7]_i_1_n_0 ;
  wire \payload[12][7]_i_1_n_0 ;
  wire \payload[13][7]_i_1_n_0 ;
  wire \payload[14][7]_i_1_n_0 ;
  wire \payload[15][7]_i_1_n_0 ;
  wire \payload[16][7]_i_1_n_0 ;
  wire \payload[17][7]_i_1_n_0 ;
  wire \payload[18][7]_i_1_n_0 ;
  wire \payload[18][7]_i_2_n_0 ;
  wire \payload[19][7]_i_1_n_0 ;
  wire \payload[1][7]_i_1_n_0 ;
  wire \payload[1][7]_i_2_n_0 ;
  wire \payload[20][7]_i_1_n_0 ;
  wire \payload[21][7]_i_1_n_0 ;
  wire \payload[22][7]_i_1_n_0 ;
  wire \payload[23][7]_i_1_n_0 ;
  wire \payload[24][7]_i_1_n_0 ;
  wire \payload[25][7]_i_1_n_0 ;
  wire \payload[26][7]_i_1_n_0 ;
  wire \payload[27][7]_i_1_n_0 ;
  wire \payload[28][7]_i_1_n_0 ;
  wire \payload[28][7]_i_2_n_0 ;
  wire \payload[29][7]_i_1_n_0 ;
  wire \payload[2][7]_i_1_n_0 ;
  wire \payload[2][7]_i_2_n_0 ;
  wire \payload[30][7]_i_1_n_0 ;
  wire \payload[31][7]_i_1_n_0 ;
  wire \payload[3][7]_i_1_n_0 ;
  wire \payload[4][7]_i_1_n_0 ;
  wire \payload[5][7]_i_1_n_0 ;
  wire \payload[6][7]_i_1_n_0 ;
  wire \payload[7][7]_i_1_n_0 ;
  wire \payload[8][7]_i_1_n_0 ;
  wire \payload[9][7]_i_1_n_0 ;
  wire \payload[9][7]_i_2_n_0 ;
  wire [5:0]payload_index;
  wire \payload_index[5]_i_1_n_0 ;
  wire \payload_index[5]_i_3_n_0 ;
  wire \payload_index[5]_i_4_n_0 ;
  wire \payload_index[5]_i_5_n_0 ;
  wire \payload_index[5]_i_6_n_0 ;
  wire \payload_index_reg_n_0_[0] ;
  wire \payload_index_reg_n_0_[1] ;
  wire \payload_index_reg_n_0_[2] ;
  wire \payload_index_reg_n_0_[3] ;
  wire \payload_index_reg_n_0_[4] ;
  wire \payload_index_reg_n_0_[5] ;
  wire \payload_length[5]_i_1_n_0 ;
  wire \payload_length_reg_n_0_[0] ;
  wire \payload_length_reg_n_0_[1] ;
  wire \payload_length_reg_n_0_[2] ;
  wire \payload_length_reg_n_0_[3] ;
  wire \payload_length_reg_n_0_[4] ;
  wire \payload_length_reg_n_0_[5] ;
  wire [7:0]\payload_reg[10] ;
  wire [7:0]\payload_reg[11] ;
  wire [7:0]\payload_reg[12] ;
  wire [7:0]\payload_reg[13] ;
  wire [7:0]\payload_reg[14] ;
  wire [7:0]\payload_reg[15] ;
  wire [7:0]\payload_reg[16] ;
  wire [7:0]\payload_reg[17] ;
  wire [7:0]\payload_reg[18] ;
  wire [7:0]\payload_reg[19] ;
  wire [7:0]\payload_reg[20] ;
  wire [7:0]\payload_reg[21] ;
  wire [7:0]\payload_reg[22] ;
  wire [7:0]\payload_reg[23] ;
  wire [7:0]\payload_reg[24] ;
  wire [7:0]\payload_reg[25] ;
  wire [7:0]\payload_reg[26] ;
  wire [7:0]\payload_reg[27] ;
  wire [7:0]\payload_reg[29] ;
  wire [7:0]\payload_reg[31] ;
  wire [7:0]\payload_reg[4] ;
  wire [7:0]\payload_reg[5] ;
  wire [7:0]\payload_reg[6] ;
  wire [7:0]\payload_reg[7] ;
  wire [7:0]\payload_reg[8] ;
  wire [7:0]\payload_reg[9] ;
  wire \payload_reg_n_0_[0][0] ;
  wire \payload_reg_n_0_[0][1] ;
  wire \payload_reg_n_0_[0][2] ;
  wire \payload_reg_n_0_[0][3] ;
  wire \payload_reg_n_0_[0][4] ;
  wire \payload_reg_n_0_[0][5] ;
  wire \payload_reg_n_0_[0][6] ;
  wire \payload_reg_n_0_[0][7] ;
  wire \payload_reg_n_0_[1][0] ;
  wire \payload_reg_n_0_[1][1] ;
  wire \payload_reg_n_0_[1][2] ;
  wire \payload_reg_n_0_[1][3] ;
  wire \payload_reg_n_0_[1][4] ;
  wire \payload_reg_n_0_[1][5] ;
  wire \payload_reg_n_0_[1][6] ;
  wire \payload_reg_n_0_[1][7] ;
  wire \payload_reg_n_0_[28][0] ;
  wire \payload_reg_n_0_[28][1] ;
  wire \payload_reg_n_0_[28][2] ;
  wire \payload_reg_n_0_[28][3] ;
  wire \payload_reg_n_0_[28][4] ;
  wire \payload_reg_n_0_[28][5] ;
  wire \payload_reg_n_0_[28][6] ;
  wire \payload_reg_n_0_[28][7] ;
  wire \payload_reg_n_0_[2][0] ;
  wire \payload_reg_n_0_[2][1] ;
  wire \payload_reg_n_0_[2][2] ;
  wire \payload_reg_n_0_[2][3] ;
  wire \payload_reg_n_0_[2][4] ;
  wire \payload_reg_n_0_[2][5] ;
  wire \payload_reg_n_0_[2][6] ;
  wire \payload_reg_n_0_[2][7] ;
  wire \payload_reg_n_0_[30][0] ;
  wire \payload_reg_n_0_[30][1] ;
  wire \payload_reg_n_0_[30][2] ;
  wire \payload_reg_n_0_[30][3] ;
  wire \payload_reg_n_0_[30][4] ;
  wire \payload_reg_n_0_[30][5] ;
  wire \payload_reg_n_0_[30][6] ;
  wire \payload_reg_n_0_[30][7] ;
  wire \payload_reg_n_0_[3][0] ;
  wire \payload_reg_n_0_[3][1] ;
  wire \payload_reg_n_0_[3][2] ;
  wire \payload_reg_n_0_[3][3] ;
  wire \payload_reg_n_0_[3][4] ;
  wire \payload_reg_n_0_[3][5] ;
  wire \payload_reg_n_0_[3][6] ;
  wire \payload_reg_n_0_[3][7] ;
  wire [15:0]rawdata;
  wire rawdata0;
  wire rawdata29_in;
  wire \rawdata[15]_i_10_n_0 ;
  wire \rawdata[15]_i_11_n_0 ;
  wire \rawdata[15]_i_12_n_0 ;
  wire \rawdata[15]_i_13_n_0 ;
  wire \rawdata[15]_i_2_n_0 ;
  wire \rawdata[15]_i_3_n_0 ;
  wire \rawdata[15]_i_5_n_0 ;
  wire \rawdata[15]_i_6_n_0 ;
  wire \rawdata[15]_i_7_n_0 ;
  wire \rawdata[15]_i_8_n_0 ;
  wire \rawdata[15]_i_9_n_0 ;
  wire rawdata_valid;
  wire rawdata_valid4_out;
  wire rst_n;
  wire [7:0]rx_byte;
  wire rx_valid;
  wire [7:0]signal_quality;
  wire [5:5]state1;
  wire [2:0]state__0;
  wire [2:0]state__1;
  wire [23:0]theta;
  wire [3:3]\NLW_checksum_sum_reg[7]_i_3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__1[0]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000000D5)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .O(state__1[0]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__1[1]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(\FSM_sequential_state[1]_i_5_n_0 ),
        .I3(\FSM_sequential_state[1]_i_6_n_0 ),
        .I4(\FSM_sequential_state[1]_i_7_n_0 ),
        .I5(\FSM_sequential_state[1]_i_8_n_0 ),
        .O(state__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(rx_byte[2]),
        .I1(rx_byte[5]),
        .I2(rx_byte[7]),
        .I3(rx_byte[6]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(rx_byte[1]),
        .I1(rx_byte[0]),
        .I2(rx_byte[4]),
        .I3(rx_byte[3]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(rx_byte[0]),
        .I1(rx_byte[1]),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(rx_byte[6]),
        .I3(rx_byte[7]),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(rx_byte[4]),
        .I1(rx_byte[5]),
        .I2(rx_byte[2]),
        .I3(rx_byte[3]),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__1[2]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h50D4)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(\payload_index_reg_n_0_[1] ),
        .I1(\payload_length_reg_n_0_[0] ),
        .I2(\payload_length_reg_n_0_[1] ),
        .I3(\payload_index_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(\payload_length_reg_n_0_[2] ),
        .I1(\payload_index_reg_n_0_[2] ),
        .I2(\payload_index_reg_n_0_[3] ),
        .I3(\payload_length_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[2]_i_12 
       (.I0(\payload_length_reg_n_0_[4] ),
        .I1(\payload_index_reg_n_0_[4] ),
        .I2(\payload_index_reg_n_0_[5] ),
        .I3(\payload_length_reg_n_0_[5] ),
        .O(\FSM_sequential_state[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state[2]_i_13 
       (.I0(state__0[2]),
        .I1(rx_valid),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \FSM_sequential_state[2]_i_14 
       (.I0(\payload_length_reg_n_0_[4] ),
        .I1(\payload_length_reg_n_0_[2] ),
        .I2(\payload_length_reg_n_0_[0] ),
        .I3(\payload_length_reg_n_0_[1] ),
        .I4(\payload_length_reg_n_0_[3] ),
        .I5(\payload_length_reg_n_0_[5] ),
        .O(state1));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    \FSM_sequential_state[2]_i_15 
       (.I0(\payload_length_reg_n_0_[4] ),
        .I1(\payload_index_reg_n_0_[4] ),
        .I2(\payload_length_reg_n_0_[3] ),
        .I3(\payload_length_reg_n_0_[1] ),
        .I4(\payload_length_reg_n_0_[0] ),
        .I5(\payload_length_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h4004200210010880)) 
    \FSM_sequential_state[2]_i_16 
       (.I0(\payload_index_reg_n_0_[0] ),
        .I1(\payload_index_reg_n_0_[1] ),
        .I2(\payload_index_reg_n_0_[2] ),
        .I3(\payload_length_reg_n_0_[2] ),
        .I4(\payload_length_reg_n_0_[0] ),
        .I5(\payload_length_reg_n_0_[1] ),
        .O(\FSM_sequential_state[2]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \FSM_sequential_state[2]_i_17 
       (.I0(\payload_index_reg_n_0_[3] ),
        .I1(\payload_length_reg_n_0_[3] ),
        .I2(\payload_length_reg_n_0_[1] ),
        .I3(\payload_length_reg_n_0_[0] ),
        .I4(\payload_length_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_state[2]_i_18 
       (.I0(rx_byte[6]),
        .I1(rx_byte[7]),
        .I2(rx_byte[4]),
        .I3(rx_byte[5]),
        .O(\FSM_sequential_state[2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_state[2]_i_19 
       (.I0(rx_byte[0]),
        .I1(rx_byte[1]),
        .I2(rx_byte[2]),
        .I3(rx_byte[3]),
        .O(\FSM_sequential_state[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_7_n_0 ),
        .I1(\FSM_sequential_state[2]_i_8_n_0 ),
        .I2(\FSM_sequential_state[2]_i_9_n_0 ),
        .I3(\FSM_sequential_state[2]_i_10_n_0 ),
        .I4(\FSM_sequential_state[2]_i_11_n_0 ),
        .I5(\FSM_sequential_state[2]_i_12_n_0 ),
        .O(state__1[2]));
  LUT6 #(
    .INIT(64'h8200000000000000)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\FSM_sequential_state[2]_i_13_n_0 ),
        .I1(state1),
        .I2(\payload_index_reg_n_0_[5] ),
        .I3(\FSM_sequential_state[2]_i_15_n_0 ),
        .I4(\FSM_sequential_state[2]_i_16_n_0 ),
        .I5(\FSM_sequential_state[2]_i_17_n_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0700040004000400)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(rx_valid),
        .I4(\FSM_sequential_state[2]_i_18_n_0 ),
        .I5(\FSM_sequential_state[2]_i_19_n_0 ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222AAA)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\FSM_sequential_state[2]_i_13_n_0 ),
        .I1(\FSM_sequential_state[2]_i_8_n_0 ),
        .I2(\FSM_sequential_state[2]_i_9_n_0 ),
        .I3(\FSM_sequential_state[2]_i_10_n_0 ),
        .I4(\FSM_sequential_state[2]_i_11_n_0 ),
        .I5(\FSM_sequential_state[2]_i_12_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1040)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(rx_valid),
        .I3(state__0[1]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hDD0D)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(\payload_index_reg_n_0_[5] ),
        .I1(\payload_length_reg_n_0_[5] ),
        .I2(\payload_index_reg_n_0_[4] ),
        .I3(\payload_length_reg_n_0_[4] ),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hDD0D)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(\payload_index_reg_n_0_[3] ),
        .I1(\payload_length_reg_n_0_[3] ),
        .I2(\payload_index_reg_n_0_[2] ),
        .I3(\payload_length_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "S_SYNC2:001,S_LENGTH:010,S_PAYLOAD:011,S_IDLE:000,S_CHECK:100" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "S_SYNC2:001,S_LENGTH:010,S_PAYLOAD:011,S_IDLE:000,S_CHECK:100" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "S_SYNC2:001,S_LENGTH:010,S_PAYLOAD:011,S_IDLE:000,S_CHECK:100" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  FDCE \attention_reg[0] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[29] [0]),
        .Q(attention[0]));
  FDCE \attention_reg[1] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[29] [1]),
        .Q(attention[1]));
  FDCE \attention_reg[2] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[29] [2]),
        .Q(attention[2]));
  FDCE \attention_reg[3] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[29] [3]),
        .Q(attention[3]));
  FDCE \attention_reg[4] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[29] [4]),
        .Q(attention[4]));
  FDCE \attention_reg[5] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[29] [5]),
        .Q(attention[5]));
  FDCE \attention_reg[6] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[29] [6]),
        .Q(attention[6]));
  FDCE \attention_reg[7] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[29] [7]),
        .Q(attention[7]));
  FDCE big_packet_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(big_packet_valid0_out),
        .Q(big_packet_valid));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum_sum[0]_i_1 
       (.I0(state__0[0]),
        .I1(in42[0]),
        .O(checksum_sum[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum_sum[1]_i_1 
       (.I0(state__0[0]),
        .I1(in42[1]),
        .O(checksum_sum[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum_sum[2]_i_1 
       (.I0(state__0[0]),
        .I1(in42[2]),
        .O(checksum_sum[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum_sum[3]_i_1 
       (.I0(state__0[0]),
        .I1(in42[3]),
        .O(checksum_sum[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \checksum_sum[3]_i_3 
       (.I0(\checksum_sum_reg_n_0_[3] ),
        .I1(rx_byte[3]),
        .O(\checksum_sum[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \checksum_sum[3]_i_4 
       (.I0(\checksum_sum_reg_n_0_[2] ),
        .I1(rx_byte[2]),
        .O(\checksum_sum[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \checksum_sum[3]_i_5 
       (.I0(\checksum_sum_reg_n_0_[1] ),
        .I1(rx_byte[1]),
        .O(\checksum_sum[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \checksum_sum[3]_i_6 
       (.I0(\checksum_sum_reg_n_0_[0] ),
        .I1(rx_byte[0]),
        .O(\checksum_sum[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum_sum[4]_i_1 
       (.I0(state__0[0]),
        .I1(in42[4]),
        .O(checksum_sum[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum_sum[5]_i_1 
       (.I0(state__0[0]),
        .I1(in42[5]),
        .O(checksum_sum[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum_sum[6]_i_1 
       (.I0(state__0[0]),
        .I1(in42[6]),
        .O(checksum_sum[6]));
  LUT5 #(
    .INIT(32'h0B000000)) 
    \checksum_sum[7]_i_1 
       (.I0(\payload_index[5]_i_4_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(rx_valid),
        .I4(state__0[1]),
        .O(\checksum_sum[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \checksum_sum[7]_i_2 
       (.I0(state__0[0]),
        .I1(in42[7]),
        .O(checksum_sum[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \checksum_sum[7]_i_4 
       (.I0(rx_byte[7]),
        .I1(\checksum_sum_reg_n_0_[7] ),
        .O(\checksum_sum[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \checksum_sum[7]_i_5 
       (.I0(rx_byte[6]),
        .I1(\checksum_sum_reg_n_0_[6] ),
        .O(\checksum_sum[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \checksum_sum[7]_i_6 
       (.I0(\checksum_sum_reg_n_0_[5] ),
        .I1(rx_byte[5]),
        .O(\checksum_sum[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \checksum_sum[7]_i_7 
       (.I0(\checksum_sum_reg_n_0_[4] ),
        .I1(rx_byte[4]),
        .O(\checksum_sum[7]_i_7_n_0 ));
  FDCE \checksum_sum_reg[0] 
       (.C(clk),
        .CE(\checksum_sum[7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(checksum_sum[0]),
        .Q(\checksum_sum_reg_n_0_[0] ));
  FDCE \checksum_sum_reg[1] 
       (.C(clk),
        .CE(\checksum_sum[7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(checksum_sum[1]),
        .Q(\checksum_sum_reg_n_0_[1] ));
  FDCE \checksum_sum_reg[2] 
       (.C(clk),
        .CE(\checksum_sum[7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(checksum_sum[2]),
        .Q(\checksum_sum_reg_n_0_[2] ));
  FDCE \checksum_sum_reg[3] 
       (.C(clk),
        .CE(\checksum_sum[7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(checksum_sum[3]),
        .Q(\checksum_sum_reg_n_0_[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \checksum_sum_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\checksum_sum_reg[3]_i_2_n_0 ,\checksum_sum_reg[3]_i_2_n_1 ,\checksum_sum_reg[3]_i_2_n_2 ,\checksum_sum_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\checksum_sum_reg_n_0_[3] ,\checksum_sum_reg_n_0_[2] ,\checksum_sum_reg_n_0_[1] ,\checksum_sum_reg_n_0_[0] }),
        .O(in42[3:0]),
        .S({\checksum_sum[3]_i_3_n_0 ,\checksum_sum[3]_i_4_n_0 ,\checksum_sum[3]_i_5_n_0 ,\checksum_sum[3]_i_6_n_0 }));
  FDCE \checksum_sum_reg[4] 
       (.C(clk),
        .CE(\checksum_sum[7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(checksum_sum[4]),
        .Q(\checksum_sum_reg_n_0_[4] ));
  FDCE \checksum_sum_reg[5] 
       (.C(clk),
        .CE(\checksum_sum[7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(checksum_sum[5]),
        .Q(\checksum_sum_reg_n_0_[5] ));
  FDCE \checksum_sum_reg[6] 
       (.C(clk),
        .CE(\checksum_sum[7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(checksum_sum[6]),
        .Q(\checksum_sum_reg_n_0_[6] ));
  FDCE \checksum_sum_reg[7] 
       (.C(clk),
        .CE(\checksum_sum[7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(checksum_sum[7]),
        .Q(\checksum_sum_reg_n_0_[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \checksum_sum_reg[7]_i_3 
       (.CI(\checksum_sum_reg[3]_i_2_n_0 ),
        .CO({\NLW_checksum_sum_reg[7]_i_3_CO_UNCONNECTED [3],\checksum_sum_reg[7]_i_3_n_1 ,\checksum_sum_reg[7]_i_3_n_2 ,\checksum_sum_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\checksum_sum_reg_n_0_[6] ,\checksum_sum_reg_n_0_[5] ,\checksum_sum_reg_n_0_[4] }),
        .O(in42[7:4]),
        .S({\checksum_sum[7]_i_4_n_0 ,\checksum_sum[7]_i_5_n_0 ,\checksum_sum[7]_i_6_n_0 ,\checksum_sum[7]_i_7_n_0 }));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \delta[23]_i_1 
       (.I0(\rawdata[15]_i_3_n_0 ),
        .I1(\delta[23]_i_2_n_0 ),
        .I2(\delta[23]_i_3_n_0 ),
        .I3(\delta[23]_i_4_n_0 ),
        .I4(\delta[23]_i_5_n_0 ),
        .I5(rawdata0),
        .O(big_packet_valid0_out));
  LUT4 #(
    .INIT(16'h0004)) 
    \delta[23]_i_10 
       (.I0(\payload_reg_n_0_[2][6] ),
        .I1(\payload_reg_n_0_[2][7] ),
        .I2(\payload_reg_n_0_[2][5] ),
        .I3(\payload_reg_n_0_[2][4] ),
        .O(\delta[23]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \delta[23]_i_11 
       (.I0(\payload_reg_n_0_[2][1] ),
        .I1(\payload_reg_n_0_[2][0] ),
        .I2(\payload_reg_n_0_[2][3] ),
        .I3(\payload_reg_n_0_[2][2] ),
        .O(\delta[23]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \delta[23]_i_12 
       (.I0(\payload_reg_n_0_[0][3] ),
        .I1(\payload_reg_n_0_[0][2] ),
        .I2(\payload_reg_n_0_[0][0] ),
        .I3(\payload_reg_n_0_[0][1] ),
        .O(\delta[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \delta[23]_i_13 
       (.I0(\payload_reg_n_0_[0][4] ),
        .I1(\payload_reg_n_0_[0][5] ),
        .O(\delta[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \delta[23]_i_2 
       (.I0(\delta[23]_i_6_n_0 ),
        .I1(\payload_reg_n_0_[30][0] ),
        .I2(\payload_reg_n_0_[30][2] ),
        .I3(\payload_reg_n_0_[30][1] ),
        .I4(\payload_reg_n_0_[30][3] ),
        .I5(\delta[23]_i_7_n_0 ),
        .O(\delta[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \delta[23]_i_3 
       (.I0(\payload_reg_n_0_[3][0] ),
        .I1(\payload_reg_n_0_[3][2] ),
        .I2(\payload_reg_n_0_[3][4] ),
        .I3(\payload_reg_n_0_[3][3] ),
        .I4(\delta[23]_i_8_n_0 ),
        .O(\delta[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \delta[23]_i_4 
       (.I0(\payload_reg_n_0_[28][3] ),
        .I1(\payload_reg_n_0_[28][0] ),
        .I2(\payload_reg_n_0_[28][1] ),
        .I3(\payload_reg_n_0_[28][2] ),
        .I4(\delta[23]_i_9_n_0 ),
        .O(\delta[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \delta[23]_i_5 
       (.I0(\delta[23]_i_10_n_0 ),
        .I1(\delta[23]_i_11_n_0 ),
        .I2(\delta[23]_i_12_n_0 ),
        .I3(\payload_reg_n_0_[0][7] ),
        .I4(\payload_reg_n_0_[0][6] ),
        .I5(\delta[23]_i_13_n_0 ),
        .O(\delta[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \delta[23]_i_6 
       (.I0(\payload_reg_n_0_[30][7] ),
        .I1(\payload_reg_n_0_[30][6] ),
        .I2(\payload_length_reg_n_0_[4] ),
        .I3(\payload_length_reg_n_0_[3] ),
        .O(\delta[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \delta[23]_i_7 
       (.I0(\payload_reg_n_0_[30][4] ),
        .I1(\payload_reg_n_0_[30][5] ),
        .I2(\payload_length_reg_n_0_[5] ),
        .I3(\payload_length_reg_n_0_[1] ),
        .I4(\payload_length_reg_n_0_[0] ),
        .I5(\payload_length_reg_n_0_[2] ),
        .O(\delta[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \delta[23]_i_8 
       (.I0(\payload_reg_n_0_[3][1] ),
        .I1(\payload_reg_n_0_[3][5] ),
        .I2(\payload_reg_n_0_[3][7] ),
        .I3(\payload_reg_n_0_[3][6] ),
        .O(\delta[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \delta[23]_i_9 
       (.I0(\payload_reg_n_0_[28][4] ),
        .I1(\payload_reg_n_0_[28][5] ),
        .I2(\payload_reg_n_0_[28][7] ),
        .I3(\payload_reg_n_0_[28][6] ),
        .O(\delta[23]_i_9_n_0 ));
  FDCE \delta_reg[0] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[6] [0]),
        .Q(delta[0]));
  FDCE \delta_reg[10] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[5] [2]),
        .Q(delta[10]));
  FDCE \delta_reg[11] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[5] [3]),
        .Q(delta[11]));
  FDCE \delta_reg[12] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[5] [4]),
        .Q(delta[12]));
  FDCE \delta_reg[13] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[5] [5]),
        .Q(delta[13]));
  FDCE \delta_reg[14] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[5] [6]),
        .Q(delta[14]));
  FDCE \delta_reg[15] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[5] [7]),
        .Q(delta[15]));
  FDCE \delta_reg[16] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[4] [0]),
        .Q(delta[16]));
  FDCE \delta_reg[17] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[4] [1]),
        .Q(delta[17]));
  FDCE \delta_reg[18] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[4] [2]),
        .Q(delta[18]));
  FDCE \delta_reg[19] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[4] [3]),
        .Q(delta[19]));
  FDCE \delta_reg[1] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[6] [1]),
        .Q(delta[1]));
  FDCE \delta_reg[20] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[4] [4]),
        .Q(delta[20]));
  FDCE \delta_reg[21] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[4] [5]),
        .Q(delta[21]));
  FDCE \delta_reg[22] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[4] [6]),
        .Q(delta[22]));
  FDCE \delta_reg[23] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[4] [7]),
        .Q(delta[23]));
  FDCE \delta_reg[2] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[6] [2]),
        .Q(delta[2]));
  FDCE \delta_reg[3] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[6] [3]),
        .Q(delta[3]));
  FDCE \delta_reg[4] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[6] [4]),
        .Q(delta[4]));
  FDCE \delta_reg[5] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[6] [5]),
        .Q(delta[5]));
  FDCE \delta_reg[6] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[6] [6]),
        .Q(delta[6]));
  FDCE \delta_reg[7] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[6] [7]),
        .Q(delta[7]));
  FDCE \delta_reg[8] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[5] [0]),
        .Q(delta[8]));
  FDCE \delta_reg[9] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[5] [1]),
        .Q(delta[9]));
  FDCE \high_alpha_reg[0] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[15] [0]),
        .Q(high_alpha[0]));
  FDCE \high_alpha_reg[10] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[14] [2]),
        .Q(high_alpha[10]));
  FDCE \high_alpha_reg[11] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[14] [3]),
        .Q(high_alpha[11]));
  FDCE \high_alpha_reg[12] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[14] [4]),
        .Q(high_alpha[12]));
  FDCE \high_alpha_reg[13] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[14] [5]),
        .Q(high_alpha[13]));
  FDCE \high_alpha_reg[14] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[14] [6]),
        .Q(high_alpha[14]));
  FDCE \high_alpha_reg[15] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[14] [7]),
        .Q(high_alpha[15]));
  FDCE \high_alpha_reg[16] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[13] [0]),
        .Q(high_alpha[16]));
  FDCE \high_alpha_reg[17] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[13] [1]),
        .Q(high_alpha[17]));
  FDCE \high_alpha_reg[18] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[13] [2]),
        .Q(high_alpha[18]));
  FDCE \high_alpha_reg[19] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[13] [3]),
        .Q(high_alpha[19]));
  FDCE \high_alpha_reg[1] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[15] [1]),
        .Q(high_alpha[1]));
  FDCE \high_alpha_reg[20] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[13] [4]),
        .Q(high_alpha[20]));
  FDCE \high_alpha_reg[21] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[13] [5]),
        .Q(high_alpha[21]));
  FDCE \high_alpha_reg[22] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[13] [6]),
        .Q(high_alpha[22]));
  FDCE \high_alpha_reg[23] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[13] [7]),
        .Q(high_alpha[23]));
  FDCE \high_alpha_reg[2] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[15] [2]),
        .Q(high_alpha[2]));
  FDCE \high_alpha_reg[3] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[15] [3]),
        .Q(high_alpha[3]));
  FDCE \high_alpha_reg[4] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[15] [4]),
        .Q(high_alpha[4]));
  FDCE \high_alpha_reg[5] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[15] [5]),
        .Q(high_alpha[5]));
  FDCE \high_alpha_reg[6] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[15] [6]),
        .Q(high_alpha[6]));
  FDCE \high_alpha_reg[7] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[15] [7]),
        .Q(high_alpha[7]));
  FDCE \high_alpha_reg[8] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[14] [0]),
        .Q(high_alpha[8]));
  FDCE \high_alpha_reg[9] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[14] [1]),
        .Q(high_alpha[9]));
  FDCE \high_beta_reg[0] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[21] [0]),
        .Q(high_beta[0]));
  FDCE \high_beta_reg[10] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[20] [2]),
        .Q(high_beta[10]));
  FDCE \high_beta_reg[11] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[20] [3]),
        .Q(high_beta[11]));
  FDCE \high_beta_reg[12] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[20] [4]),
        .Q(high_beta[12]));
  FDCE \high_beta_reg[13] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[20] [5]),
        .Q(high_beta[13]));
  FDCE \high_beta_reg[14] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[20] [6]),
        .Q(high_beta[14]));
  FDCE \high_beta_reg[15] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[20] [7]),
        .Q(high_beta[15]));
  FDCE \high_beta_reg[16] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[19] [0]),
        .Q(high_beta[16]));
  FDCE \high_beta_reg[17] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[19] [1]),
        .Q(high_beta[17]));
  FDCE \high_beta_reg[18] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[19] [2]),
        .Q(high_beta[18]));
  FDCE \high_beta_reg[19] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[19] [3]),
        .Q(high_beta[19]));
  FDCE \high_beta_reg[1] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[21] [1]),
        .Q(high_beta[1]));
  FDCE \high_beta_reg[20] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[19] [4]),
        .Q(high_beta[20]));
  FDCE \high_beta_reg[21] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[19] [5]),
        .Q(high_beta[21]));
  FDCE \high_beta_reg[22] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[19] [6]),
        .Q(high_beta[22]));
  FDCE \high_beta_reg[23] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[19] [7]),
        .Q(high_beta[23]));
  FDCE \high_beta_reg[2] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[21] [2]),
        .Q(high_beta[2]));
  FDCE \high_beta_reg[3] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[21] [3]),
        .Q(high_beta[3]));
  FDCE \high_beta_reg[4] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[21] [4]),
        .Q(high_beta[4]));
  FDCE \high_beta_reg[5] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[21] [5]),
        .Q(high_beta[5]));
  FDCE \high_beta_reg[6] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[21] [6]),
        .Q(high_beta[6]));
  FDCE \high_beta_reg[7] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[21] [7]),
        .Q(high_beta[7]));
  FDCE \high_beta_reg[8] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[20] [0]),
        .Q(high_beta[8]));
  FDCE \high_beta_reg[9] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[20] [1]),
        .Q(high_beta[9]));
  FDCE \low_alpha_reg[0] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[12] [0]),
        .Q(low_alpha[0]));
  FDCE \low_alpha_reg[10] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[11] [2]),
        .Q(low_alpha[10]));
  FDCE \low_alpha_reg[11] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[11] [3]),
        .Q(low_alpha[11]));
  FDCE \low_alpha_reg[12] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[11] [4]),
        .Q(low_alpha[12]));
  FDCE \low_alpha_reg[13] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[11] [5]),
        .Q(low_alpha[13]));
  FDCE \low_alpha_reg[14] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[11] [6]),
        .Q(low_alpha[14]));
  FDCE \low_alpha_reg[15] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[11] [7]),
        .Q(low_alpha[15]));
  FDCE \low_alpha_reg[16] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[10] [0]),
        .Q(low_alpha[16]));
  FDCE \low_alpha_reg[17] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[10] [1]),
        .Q(low_alpha[17]));
  FDCE \low_alpha_reg[18] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[10] [2]),
        .Q(low_alpha[18]));
  FDCE \low_alpha_reg[19] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[10] [3]),
        .Q(low_alpha[19]));
  FDCE \low_alpha_reg[1] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[12] [1]),
        .Q(low_alpha[1]));
  FDCE \low_alpha_reg[20] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[10] [4]),
        .Q(low_alpha[20]));
  FDCE \low_alpha_reg[21] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[10] [5]),
        .Q(low_alpha[21]));
  FDCE \low_alpha_reg[22] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[10] [6]),
        .Q(low_alpha[22]));
  FDCE \low_alpha_reg[23] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[10] [7]),
        .Q(low_alpha[23]));
  FDCE \low_alpha_reg[2] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[12] [2]),
        .Q(low_alpha[2]));
  FDCE \low_alpha_reg[3] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[12] [3]),
        .Q(low_alpha[3]));
  FDCE \low_alpha_reg[4] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[12] [4]),
        .Q(low_alpha[4]));
  FDCE \low_alpha_reg[5] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[12] [5]),
        .Q(low_alpha[5]));
  FDCE \low_alpha_reg[6] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[12] [6]),
        .Q(low_alpha[6]));
  FDCE \low_alpha_reg[7] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[12] [7]),
        .Q(low_alpha[7]));
  FDCE \low_alpha_reg[8] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[11] [0]),
        .Q(low_alpha[8]));
  FDCE \low_alpha_reg[9] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[11] [1]),
        .Q(low_alpha[9]));
  FDCE \low_beta_reg[0] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[18] [0]),
        .Q(low_beta[0]));
  FDCE \low_beta_reg[10] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[17] [2]),
        .Q(low_beta[10]));
  FDCE \low_beta_reg[11] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[17] [3]),
        .Q(low_beta[11]));
  FDCE \low_beta_reg[12] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[17] [4]),
        .Q(low_beta[12]));
  FDCE \low_beta_reg[13] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[17] [5]),
        .Q(low_beta[13]));
  FDCE \low_beta_reg[14] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[17] [6]),
        .Q(low_beta[14]));
  FDCE \low_beta_reg[15] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[17] [7]),
        .Q(low_beta[15]));
  FDCE \low_beta_reg[16] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[16] [0]),
        .Q(low_beta[16]));
  FDCE \low_beta_reg[17] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[16] [1]),
        .Q(low_beta[17]));
  FDCE \low_beta_reg[18] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[16] [2]),
        .Q(low_beta[18]));
  FDCE \low_beta_reg[19] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[16] [3]),
        .Q(low_beta[19]));
  FDCE \low_beta_reg[1] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[18] [1]),
        .Q(low_beta[1]));
  FDCE \low_beta_reg[20] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[16] [4]),
        .Q(low_beta[20]));
  FDCE \low_beta_reg[21] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[16] [5]),
        .Q(low_beta[21]));
  FDCE \low_beta_reg[22] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[16] [6]),
        .Q(low_beta[22]));
  FDCE \low_beta_reg[23] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[16] [7]),
        .Q(low_beta[23]));
  FDCE \low_beta_reg[2] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[18] [2]),
        .Q(low_beta[2]));
  FDCE \low_beta_reg[3] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[18] [3]),
        .Q(low_beta[3]));
  FDCE \low_beta_reg[4] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[18] [4]),
        .Q(low_beta[4]));
  FDCE \low_beta_reg[5] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[18] [5]),
        .Q(low_beta[5]));
  FDCE \low_beta_reg[6] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[18] [6]),
        .Q(low_beta[6]));
  FDCE \low_beta_reg[7] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[18] [7]),
        .Q(low_beta[7]));
  FDCE \low_beta_reg[8] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[17] [0]),
        .Q(low_beta[8]));
  FDCE \low_beta_reg[9] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[17] [1]),
        .Q(low_beta[9]));
  FDCE \low_gamma_reg[0] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[24] [0]),
        .Q(low_gamma[0]));
  FDCE \low_gamma_reg[10] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[23] [2]),
        .Q(low_gamma[10]));
  FDCE \low_gamma_reg[11] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[23] [3]),
        .Q(low_gamma[11]));
  FDCE \low_gamma_reg[12] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[23] [4]),
        .Q(low_gamma[12]));
  FDCE \low_gamma_reg[13] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[23] [5]),
        .Q(low_gamma[13]));
  FDCE \low_gamma_reg[14] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[23] [6]),
        .Q(low_gamma[14]));
  FDCE \low_gamma_reg[15] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[23] [7]),
        .Q(low_gamma[15]));
  FDCE \low_gamma_reg[16] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[22] [0]),
        .Q(low_gamma[16]));
  FDCE \low_gamma_reg[17] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[22] [1]),
        .Q(low_gamma[17]));
  FDCE \low_gamma_reg[18] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[22] [2]),
        .Q(low_gamma[18]));
  FDCE \low_gamma_reg[19] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[22] [3]),
        .Q(low_gamma[19]));
  FDCE \low_gamma_reg[1] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[24] [1]),
        .Q(low_gamma[1]));
  FDCE \low_gamma_reg[20] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[22] [4]),
        .Q(low_gamma[20]));
  FDCE \low_gamma_reg[21] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[22] [5]),
        .Q(low_gamma[21]));
  FDCE \low_gamma_reg[22] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[22] [6]),
        .Q(low_gamma[22]));
  FDCE \low_gamma_reg[23] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[22] [7]),
        .Q(low_gamma[23]));
  FDCE \low_gamma_reg[2] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[24] [2]),
        .Q(low_gamma[2]));
  FDCE \low_gamma_reg[3] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[24] [3]),
        .Q(low_gamma[3]));
  FDCE \low_gamma_reg[4] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[24] [4]),
        .Q(low_gamma[4]));
  FDCE \low_gamma_reg[5] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[24] [5]),
        .Q(low_gamma[5]));
  FDCE \low_gamma_reg[6] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[24] [6]),
        .Q(low_gamma[6]));
  FDCE \low_gamma_reg[7] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[24] [7]),
        .Q(low_gamma[7]));
  FDCE \low_gamma_reg[8] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[23] [0]),
        .Q(low_gamma[8]));
  FDCE \low_gamma_reg[9] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[23] [1]),
        .Q(low_gamma[9]));
  FDCE \meditation_reg[0] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[31] [0]),
        .Q(meditation[0]));
  FDCE \meditation_reg[1] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[31] [1]),
        .Q(meditation[1]));
  FDCE \meditation_reg[2] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[31] [2]),
        .Q(meditation[2]));
  FDCE \meditation_reg[3] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[31] [3]),
        .Q(meditation[3]));
  FDCE \meditation_reg[4] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[31] [4]),
        .Q(meditation[4]));
  FDCE \meditation_reg[5] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[31] [5]),
        .Q(meditation[5]));
  FDCE \meditation_reg[6] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[31] [6]),
        .Q(meditation[6]));
  FDCE \meditation_reg[7] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[31] [7]),
        .Q(meditation[7]));
  FDCE \middle_gamma_reg[0] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[27] [0]),
        .Q(middle_gamma[0]));
  FDCE \middle_gamma_reg[10] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[26] [2]),
        .Q(middle_gamma[10]));
  FDCE \middle_gamma_reg[11] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[26] [3]),
        .Q(middle_gamma[11]));
  FDCE \middle_gamma_reg[12] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[26] [4]),
        .Q(middle_gamma[12]));
  FDCE \middle_gamma_reg[13] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[26] [5]),
        .Q(middle_gamma[13]));
  FDCE \middle_gamma_reg[14] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[26] [6]),
        .Q(middle_gamma[14]));
  FDCE \middle_gamma_reg[15] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[26] [7]),
        .Q(middle_gamma[15]));
  FDCE \middle_gamma_reg[16] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[25] [0]),
        .Q(middle_gamma[16]));
  FDCE \middle_gamma_reg[17] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[25] [1]),
        .Q(middle_gamma[17]));
  FDCE \middle_gamma_reg[18] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[25] [2]),
        .Q(middle_gamma[18]));
  FDCE \middle_gamma_reg[19] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[25] [3]),
        .Q(middle_gamma[19]));
  FDCE \middle_gamma_reg[1] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[27] [1]),
        .Q(middle_gamma[1]));
  FDCE \middle_gamma_reg[20] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[25] [4]),
        .Q(middle_gamma[20]));
  FDCE \middle_gamma_reg[21] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[25] [5]),
        .Q(middle_gamma[21]));
  FDCE \middle_gamma_reg[22] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[25] [6]),
        .Q(middle_gamma[22]));
  FDCE \middle_gamma_reg[23] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[25] [7]),
        .Q(middle_gamma[23]));
  FDCE \middle_gamma_reg[2] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[27] [2]),
        .Q(middle_gamma[2]));
  FDCE \middle_gamma_reg[3] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[27] [3]),
        .Q(middle_gamma[3]));
  FDCE \middle_gamma_reg[4] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[27] [4]),
        .Q(middle_gamma[4]));
  FDCE \middle_gamma_reg[5] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[27] [5]),
        .Q(middle_gamma[5]));
  FDCE \middle_gamma_reg[6] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[27] [6]),
        .Q(middle_gamma[6]));
  FDCE \middle_gamma_reg[7] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[27] [7]),
        .Q(middle_gamma[7]));
  FDCE \middle_gamma_reg[8] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[26] [0]),
        .Q(middle_gamma[8]));
  FDCE \middle_gamma_reg[9] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[26] [1]),
        .Q(middle_gamma[9]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[0][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[0][7]_i_4_n_0 ),
        .I5(\payload[0][7]_i_5_n_0 ),
        .O(\payload[0][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \payload[0][7]_i_2 
       (.I0(rx_valid),
        .I1(state__0[2]),
        .O(\payload[0][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \payload[0][7]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\payload_index_reg_n_0_[5] ),
        .O(\payload[0][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \payload[0][7]_i_4 
       (.I0(\payload_index_reg_n_0_[3] ),
        .I1(\payload_index_reg_n_0_[4] ),
        .O(\payload[0][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \payload[0][7]_i_5 
       (.I0(\payload_index_reg_n_0_[0] ),
        .I1(\payload_index_reg_n_0_[1] ),
        .O(\payload[0][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[10][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[9][7]_i_2_n_0 ),
        .I5(\payload[2][7]_i_2_n_0 ),
        .O(\payload[10][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \payload[11][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[9][7]_i_2_n_0 ),
        .I5(\payload_index[5]_i_5_n_0 ),
        .O(\payload[11][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[12][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[9][7]_i_2_n_0 ),
        .I5(\payload[0][7]_i_5_n_0 ),
        .O(\payload[12][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[13][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[9][7]_i_2_n_0 ),
        .I5(\payload[1][7]_i_2_n_0 ),
        .O(\payload[13][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[14][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[9][7]_i_2_n_0 ),
        .I5(\payload[2][7]_i_2_n_0 ),
        .O(\payload[14][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \payload[15][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[9][7]_i_2_n_0 ),
        .I5(\payload_index[5]_i_5_n_0 ),
        .O(\payload[15][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[16][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[18][7]_i_2_n_0 ),
        .I5(\payload[0][7]_i_5_n_0 ),
        .O(\payload[16][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[17][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[18][7]_i_2_n_0 ),
        .I5(\payload[1][7]_i_2_n_0 ),
        .O(\payload[17][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[18][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[18][7]_i_2_n_0 ),
        .I5(\payload[2][7]_i_2_n_0 ),
        .O(\payload[18][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \payload[18][7]_i_2 
       (.I0(\payload_index_reg_n_0_[4] ),
        .I1(\payload_index_reg_n_0_[3] ),
        .O(\payload[18][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \payload[19][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[18][7]_i_2_n_0 ),
        .I5(\payload_index[5]_i_5_n_0 ),
        .O(\payload[19][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[1][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[0][7]_i_4_n_0 ),
        .I5(\payload[1][7]_i_2_n_0 ),
        .O(\payload[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \payload[1][7]_i_2 
       (.I0(\payload_index_reg_n_0_[0] ),
        .I1(\payload_index_reg_n_0_[1] ),
        .O(\payload[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[20][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[18][7]_i_2_n_0 ),
        .I5(\payload[0][7]_i_5_n_0 ),
        .O(\payload[20][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[21][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[18][7]_i_2_n_0 ),
        .I5(\payload[1][7]_i_2_n_0 ),
        .O(\payload[21][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[22][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[18][7]_i_2_n_0 ),
        .I5(\payload[2][7]_i_2_n_0 ),
        .O(\payload[22][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \payload[23][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[18][7]_i_2_n_0 ),
        .I5(\payload_index[5]_i_5_n_0 ),
        .O(\payload[23][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[24][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[28][7]_i_2_n_0 ),
        .I5(\payload[0][7]_i_5_n_0 ),
        .O(\payload[24][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[25][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[28][7]_i_2_n_0 ),
        .I5(\payload[1][7]_i_2_n_0 ),
        .O(\payload[25][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[26][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[28][7]_i_2_n_0 ),
        .I5(\payload[2][7]_i_2_n_0 ),
        .O(\payload[26][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \payload[27][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[28][7]_i_2_n_0 ),
        .I5(\payload_index[5]_i_5_n_0 ),
        .O(\payload[27][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[28][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[28][7]_i_2_n_0 ),
        .I5(\payload[0][7]_i_5_n_0 ),
        .O(\payload[28][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \payload[28][7]_i_2 
       (.I0(\payload_index_reg_n_0_[3] ),
        .I1(\payload_index_reg_n_0_[4] ),
        .O(\payload[28][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[29][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[28][7]_i_2_n_0 ),
        .I5(\payload[1][7]_i_2_n_0 ),
        .O(\payload[29][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[2][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[0][7]_i_4_n_0 ),
        .I5(\payload[2][7]_i_2_n_0 ),
        .O(\payload[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \payload[2][7]_i_2 
       (.I0(\payload_index_reg_n_0_[1] ),
        .I1(\payload_index_reg_n_0_[0] ),
        .O(\payload[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[30][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[28][7]_i_2_n_0 ),
        .I5(\payload[2][7]_i_2_n_0 ),
        .O(\payload[30][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \payload[31][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[28][7]_i_2_n_0 ),
        .I5(\payload_index[5]_i_5_n_0 ),
        .O(\payload[31][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \payload[3][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[0][7]_i_4_n_0 ),
        .I5(\payload_index[5]_i_5_n_0 ),
        .O(\payload[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[4][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[0][7]_i_4_n_0 ),
        .I5(\payload[0][7]_i_5_n_0 ),
        .O(\payload[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[5][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[0][7]_i_4_n_0 ),
        .I5(\payload[1][7]_i_2_n_0 ),
        .O(\payload[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \payload[6][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[0][7]_i_4_n_0 ),
        .I5(\payload[2][7]_i_2_n_0 ),
        .O(\payload[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \payload[7][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[0][7]_i_4_n_0 ),
        .I5(\payload_index[5]_i_5_n_0 ),
        .O(\payload[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[8][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[9][7]_i_2_n_0 ),
        .I5(\payload[0][7]_i_5_n_0 ),
        .O(\payload[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \payload[9][7]_i_1 
       (.I0(\payload[0][7]_i_2_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(\payload[0][7]_i_3_n_0 ),
        .I3(\payload_index_reg_n_0_[2] ),
        .I4(\payload[9][7]_i_2_n_0 ),
        .I5(\payload[1][7]_i_2_n_0 ),
        .O(\payload[9][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \payload[9][7]_i_2 
       (.I0(\payload_index_reg_n_0_[3] ),
        .I1(\payload_index_reg_n_0_[4] ),
        .O(\payload[9][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \payload_index[0]_i_1 
       (.I0(state__0[0]),
        .I1(\payload_index_reg_n_0_[0] ),
        .O(payload_index[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \payload_index[1]_i_1 
       (.I0(state__0[0]),
        .I1(\payload_index_reg_n_0_[0] ),
        .I2(\payload_index_reg_n_0_[1] ),
        .O(payload_index[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \payload_index[2]_i_1 
       (.I0(state__0[0]),
        .I1(\payload_index_reg_n_0_[1] ),
        .I2(\payload_index_reg_n_0_[0] ),
        .I3(\payload_index_reg_n_0_[2] ),
        .O(payload_index[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \payload_index[3]_i_1 
       (.I0(\payload_index_reg_n_0_[1] ),
        .I1(\payload_index_reg_n_0_[0] ),
        .I2(\payload_index_reg_n_0_[2] ),
        .I3(state__0[0]),
        .I4(\payload_index_reg_n_0_[3] ),
        .O(payload_index[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \payload_index[4]_i_1 
       (.I0(\payload_index_reg_n_0_[3] ),
        .I1(\payload_index_reg_n_0_[2] ),
        .I2(\payload_index_reg_n_0_[0] ),
        .I3(\payload_index_reg_n_0_[1] ),
        .I4(\payload_index[5]_i_6_n_0 ),
        .I5(\payload_index_reg_n_0_[4] ),
        .O(payload_index[4]));
  LUT6 #(
    .INIT(64'h004F000000000000)) 
    \payload_index[5]_i_1 
       (.I0(\payload_index[5]_i_3_n_0 ),
        .I1(\payload_index[5]_i_4_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(rx_valid),
        .I5(state__0[1]),
        .O(\payload_index[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF000040000000)) 
    \payload_index[5]_i_2 
       (.I0(\payload_index[5]_i_5_n_0 ),
        .I1(\payload_index_reg_n_0_[2] ),
        .I2(\payload_index_reg_n_0_[3] ),
        .I3(\payload_index_reg_n_0_[4] ),
        .I4(\payload_index[5]_i_6_n_0 ),
        .I5(\payload_index_reg_n_0_[5] ),
        .O(payload_index[5]));
  LUT5 #(
    .INIT(32'h80000080)) 
    \payload_index[5]_i_3 
       (.I0(\FSM_sequential_state[2]_i_17_n_0 ),
        .I1(\FSM_sequential_state[2]_i_16_n_0 ),
        .I2(\FSM_sequential_state[2]_i_15_n_0 ),
        .I3(\payload_index_reg_n_0_[5] ),
        .I4(state1),
        .O(\payload_index[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \payload_index[5]_i_4 
       (.I0(\FSM_sequential_state[2]_i_12_n_0 ),
        .I1(\FSM_sequential_state[2]_i_11_n_0 ),
        .I2(\FSM_sequential_state[2]_i_10_n_0 ),
        .I3(\FSM_sequential_state[2]_i_9_n_0 ),
        .I4(\FSM_sequential_state[2]_i_8_n_0 ),
        .O(\payload_index[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \payload_index[5]_i_5 
       (.I0(\payload_index_reg_n_0_[0] ),
        .I1(\payload_index_reg_n_0_[1] ),
        .O(\payload_index[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \payload_index[5]_i_6 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(\payload_index[5]_i_6_n_0 ));
  FDCE \payload_index_reg[0] 
       (.C(clk),
        .CE(\payload_index[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(payload_index[0]),
        .Q(\payload_index_reg_n_0_[0] ));
  FDCE \payload_index_reg[1] 
       (.C(clk),
        .CE(\payload_index[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(payload_index[1]),
        .Q(\payload_index_reg_n_0_[1] ));
  FDCE \payload_index_reg[2] 
       (.C(clk),
        .CE(\payload_index[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(payload_index[2]),
        .Q(\payload_index_reg_n_0_[2] ));
  FDCE \payload_index_reg[3] 
       (.C(clk),
        .CE(\payload_index[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(payload_index[3]),
        .Q(\payload_index_reg_n_0_[3] ));
  FDCE \payload_index_reg[4] 
       (.C(clk),
        .CE(\payload_index[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(payload_index[4]),
        .Q(\payload_index_reg_n_0_[4] ));
  FDCE \payload_index_reg[5] 
       (.C(clk),
        .CE(\payload_index[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(payload_index[5]),
        .Q(\payload_index_reg_n_0_[5] ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \payload_length[5]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(rx_valid),
        .I3(state__0[1]),
        .I4(p_1_in),
        .O(\payload_length[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01100000)) 
    \payload_length[5]_i_2 
       (.I0(rx_byte[6]),
        .I1(rx_byte[7]),
        .I2(rx_byte[5]),
        .I3(rx_byte[2]),
        .I4(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(p_1_in));
  FDCE \payload_length_reg[0] 
       (.C(clk),
        .CE(\payload_length[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_length_reg_n_0_[0] ));
  FDCE \payload_length_reg[1] 
       (.C(clk),
        .CE(\payload_length[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_length_reg_n_0_[1] ));
  FDCE \payload_length_reg[2] 
       (.C(clk),
        .CE(\payload_length[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_length_reg_n_0_[2] ));
  FDCE \payload_length_reg[3] 
       (.C(clk),
        .CE(\payload_length[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_length_reg_n_0_[3] ));
  FDCE \payload_length_reg[4] 
       (.C(clk),
        .CE(\payload_length[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_length_reg_n_0_[4] ));
  FDCE \payload_length_reg[5] 
       (.C(clk),
        .CE(\payload_length[5]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_length_reg_n_0_[5] ));
  FDCE \payload_reg[0][0] 
       (.C(clk),
        .CE(\payload[0][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg_n_0_[0][0] ));
  FDCE \payload_reg[0][1] 
       (.C(clk),
        .CE(\payload[0][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg_n_0_[0][1] ));
  FDCE \payload_reg[0][2] 
       (.C(clk),
        .CE(\payload[0][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg_n_0_[0][2] ));
  FDCE \payload_reg[0][3] 
       (.C(clk),
        .CE(\payload[0][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg_n_0_[0][3] ));
  FDCE \payload_reg[0][4] 
       (.C(clk),
        .CE(\payload[0][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg_n_0_[0][4] ));
  FDCE \payload_reg[0][5] 
       (.C(clk),
        .CE(\payload[0][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg_n_0_[0][5] ));
  FDCE \payload_reg[0][6] 
       (.C(clk),
        .CE(\payload[0][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg_n_0_[0][6] ));
  FDCE \payload_reg[0][7] 
       (.C(clk),
        .CE(\payload[0][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg_n_0_[0][7] ));
  FDCE \payload_reg[10][0] 
       (.C(clk),
        .CE(\payload[10][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[10] [0]));
  FDCE \payload_reg[10][1] 
       (.C(clk),
        .CE(\payload[10][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[10] [1]));
  FDCE \payload_reg[10][2] 
       (.C(clk),
        .CE(\payload[10][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[10] [2]));
  FDCE \payload_reg[10][3] 
       (.C(clk),
        .CE(\payload[10][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[10] [3]));
  FDCE \payload_reg[10][4] 
       (.C(clk),
        .CE(\payload[10][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[10] [4]));
  FDCE \payload_reg[10][5] 
       (.C(clk),
        .CE(\payload[10][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[10] [5]));
  FDCE \payload_reg[10][6] 
       (.C(clk),
        .CE(\payload[10][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[10] [6]));
  FDCE \payload_reg[10][7] 
       (.C(clk),
        .CE(\payload[10][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[10] [7]));
  FDCE \payload_reg[11][0] 
       (.C(clk),
        .CE(\payload[11][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[11] [0]));
  FDCE \payload_reg[11][1] 
       (.C(clk),
        .CE(\payload[11][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[11] [1]));
  FDCE \payload_reg[11][2] 
       (.C(clk),
        .CE(\payload[11][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[11] [2]));
  FDCE \payload_reg[11][3] 
       (.C(clk),
        .CE(\payload[11][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[11] [3]));
  FDCE \payload_reg[11][4] 
       (.C(clk),
        .CE(\payload[11][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[11] [4]));
  FDCE \payload_reg[11][5] 
       (.C(clk),
        .CE(\payload[11][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[11] [5]));
  FDCE \payload_reg[11][6] 
       (.C(clk),
        .CE(\payload[11][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[11] [6]));
  FDCE \payload_reg[11][7] 
       (.C(clk),
        .CE(\payload[11][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[11] [7]));
  FDCE \payload_reg[12][0] 
       (.C(clk),
        .CE(\payload[12][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[12] [0]));
  FDCE \payload_reg[12][1] 
       (.C(clk),
        .CE(\payload[12][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[12] [1]));
  FDCE \payload_reg[12][2] 
       (.C(clk),
        .CE(\payload[12][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[12] [2]));
  FDCE \payload_reg[12][3] 
       (.C(clk),
        .CE(\payload[12][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[12] [3]));
  FDCE \payload_reg[12][4] 
       (.C(clk),
        .CE(\payload[12][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[12] [4]));
  FDCE \payload_reg[12][5] 
       (.C(clk),
        .CE(\payload[12][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[12] [5]));
  FDCE \payload_reg[12][6] 
       (.C(clk),
        .CE(\payload[12][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[12] [6]));
  FDCE \payload_reg[12][7] 
       (.C(clk),
        .CE(\payload[12][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[12] [7]));
  FDCE \payload_reg[13][0] 
       (.C(clk),
        .CE(\payload[13][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[13] [0]));
  FDCE \payload_reg[13][1] 
       (.C(clk),
        .CE(\payload[13][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[13] [1]));
  FDCE \payload_reg[13][2] 
       (.C(clk),
        .CE(\payload[13][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[13] [2]));
  FDCE \payload_reg[13][3] 
       (.C(clk),
        .CE(\payload[13][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[13] [3]));
  FDCE \payload_reg[13][4] 
       (.C(clk),
        .CE(\payload[13][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[13] [4]));
  FDCE \payload_reg[13][5] 
       (.C(clk),
        .CE(\payload[13][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[13] [5]));
  FDCE \payload_reg[13][6] 
       (.C(clk),
        .CE(\payload[13][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[13] [6]));
  FDCE \payload_reg[13][7] 
       (.C(clk),
        .CE(\payload[13][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[13] [7]));
  FDCE \payload_reg[14][0] 
       (.C(clk),
        .CE(\payload[14][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[14] [0]));
  FDCE \payload_reg[14][1] 
       (.C(clk),
        .CE(\payload[14][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[14] [1]));
  FDCE \payload_reg[14][2] 
       (.C(clk),
        .CE(\payload[14][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[14] [2]));
  FDCE \payload_reg[14][3] 
       (.C(clk),
        .CE(\payload[14][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[14] [3]));
  FDCE \payload_reg[14][4] 
       (.C(clk),
        .CE(\payload[14][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[14] [4]));
  FDCE \payload_reg[14][5] 
       (.C(clk),
        .CE(\payload[14][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[14] [5]));
  FDCE \payload_reg[14][6] 
       (.C(clk),
        .CE(\payload[14][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[14] [6]));
  FDCE \payload_reg[14][7] 
       (.C(clk),
        .CE(\payload[14][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[14] [7]));
  FDCE \payload_reg[15][0] 
       (.C(clk),
        .CE(\payload[15][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[15] [0]));
  FDCE \payload_reg[15][1] 
       (.C(clk),
        .CE(\payload[15][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[15] [1]));
  FDCE \payload_reg[15][2] 
       (.C(clk),
        .CE(\payload[15][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[15] [2]));
  FDCE \payload_reg[15][3] 
       (.C(clk),
        .CE(\payload[15][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[15] [3]));
  FDCE \payload_reg[15][4] 
       (.C(clk),
        .CE(\payload[15][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[15] [4]));
  FDCE \payload_reg[15][5] 
       (.C(clk),
        .CE(\payload[15][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[15] [5]));
  FDCE \payload_reg[15][6] 
       (.C(clk),
        .CE(\payload[15][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[15] [6]));
  FDCE \payload_reg[15][7] 
       (.C(clk),
        .CE(\payload[15][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[15] [7]));
  FDCE \payload_reg[16][0] 
       (.C(clk),
        .CE(\payload[16][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[16] [0]));
  FDCE \payload_reg[16][1] 
       (.C(clk),
        .CE(\payload[16][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[16] [1]));
  FDCE \payload_reg[16][2] 
       (.C(clk),
        .CE(\payload[16][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[16] [2]));
  FDCE \payload_reg[16][3] 
       (.C(clk),
        .CE(\payload[16][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[16] [3]));
  FDCE \payload_reg[16][4] 
       (.C(clk),
        .CE(\payload[16][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[16] [4]));
  FDCE \payload_reg[16][5] 
       (.C(clk),
        .CE(\payload[16][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[16] [5]));
  FDCE \payload_reg[16][6] 
       (.C(clk),
        .CE(\payload[16][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[16] [6]));
  FDCE \payload_reg[16][7] 
       (.C(clk),
        .CE(\payload[16][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[16] [7]));
  FDCE \payload_reg[17][0] 
       (.C(clk),
        .CE(\payload[17][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[17] [0]));
  FDCE \payload_reg[17][1] 
       (.C(clk),
        .CE(\payload[17][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[17] [1]));
  FDCE \payload_reg[17][2] 
       (.C(clk),
        .CE(\payload[17][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[17] [2]));
  FDCE \payload_reg[17][3] 
       (.C(clk),
        .CE(\payload[17][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[17] [3]));
  FDCE \payload_reg[17][4] 
       (.C(clk),
        .CE(\payload[17][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[17] [4]));
  FDCE \payload_reg[17][5] 
       (.C(clk),
        .CE(\payload[17][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[17] [5]));
  FDCE \payload_reg[17][6] 
       (.C(clk),
        .CE(\payload[17][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[17] [6]));
  FDCE \payload_reg[17][7] 
       (.C(clk),
        .CE(\payload[17][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[17] [7]));
  FDCE \payload_reg[18][0] 
       (.C(clk),
        .CE(\payload[18][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[18] [0]));
  FDCE \payload_reg[18][1] 
       (.C(clk),
        .CE(\payload[18][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[18] [1]));
  FDCE \payload_reg[18][2] 
       (.C(clk),
        .CE(\payload[18][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[18] [2]));
  FDCE \payload_reg[18][3] 
       (.C(clk),
        .CE(\payload[18][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[18] [3]));
  FDCE \payload_reg[18][4] 
       (.C(clk),
        .CE(\payload[18][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[18] [4]));
  FDCE \payload_reg[18][5] 
       (.C(clk),
        .CE(\payload[18][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[18] [5]));
  FDCE \payload_reg[18][6] 
       (.C(clk),
        .CE(\payload[18][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[18] [6]));
  FDCE \payload_reg[18][7] 
       (.C(clk),
        .CE(\payload[18][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[18] [7]));
  FDCE \payload_reg[19][0] 
       (.C(clk),
        .CE(\payload[19][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[19] [0]));
  FDCE \payload_reg[19][1] 
       (.C(clk),
        .CE(\payload[19][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[19] [1]));
  FDCE \payload_reg[19][2] 
       (.C(clk),
        .CE(\payload[19][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[19] [2]));
  FDCE \payload_reg[19][3] 
       (.C(clk),
        .CE(\payload[19][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[19] [3]));
  FDCE \payload_reg[19][4] 
       (.C(clk),
        .CE(\payload[19][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[19] [4]));
  FDCE \payload_reg[19][5] 
       (.C(clk),
        .CE(\payload[19][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[19] [5]));
  FDCE \payload_reg[19][6] 
       (.C(clk),
        .CE(\payload[19][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[19] [6]));
  FDCE \payload_reg[19][7] 
       (.C(clk),
        .CE(\payload[19][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[19] [7]));
  FDCE \payload_reg[1][0] 
       (.C(clk),
        .CE(\payload[1][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg_n_0_[1][0] ));
  FDCE \payload_reg[1][1] 
       (.C(clk),
        .CE(\payload[1][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg_n_0_[1][1] ));
  FDCE \payload_reg[1][2] 
       (.C(clk),
        .CE(\payload[1][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg_n_0_[1][2] ));
  FDCE \payload_reg[1][3] 
       (.C(clk),
        .CE(\payload[1][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg_n_0_[1][3] ));
  FDCE \payload_reg[1][4] 
       (.C(clk),
        .CE(\payload[1][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg_n_0_[1][4] ));
  FDCE \payload_reg[1][5] 
       (.C(clk),
        .CE(\payload[1][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg_n_0_[1][5] ));
  FDCE \payload_reg[1][6] 
       (.C(clk),
        .CE(\payload[1][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg_n_0_[1][6] ));
  FDCE \payload_reg[1][7] 
       (.C(clk),
        .CE(\payload[1][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg_n_0_[1][7] ));
  FDCE \payload_reg[20][0] 
       (.C(clk),
        .CE(\payload[20][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[20] [0]));
  FDCE \payload_reg[20][1] 
       (.C(clk),
        .CE(\payload[20][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[20] [1]));
  FDCE \payload_reg[20][2] 
       (.C(clk),
        .CE(\payload[20][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[20] [2]));
  FDCE \payload_reg[20][3] 
       (.C(clk),
        .CE(\payload[20][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[20] [3]));
  FDCE \payload_reg[20][4] 
       (.C(clk),
        .CE(\payload[20][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[20] [4]));
  FDCE \payload_reg[20][5] 
       (.C(clk),
        .CE(\payload[20][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[20] [5]));
  FDCE \payload_reg[20][6] 
       (.C(clk),
        .CE(\payload[20][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[20] [6]));
  FDCE \payload_reg[20][7] 
       (.C(clk),
        .CE(\payload[20][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[20] [7]));
  FDCE \payload_reg[21][0] 
       (.C(clk),
        .CE(\payload[21][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[21] [0]));
  FDCE \payload_reg[21][1] 
       (.C(clk),
        .CE(\payload[21][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[21] [1]));
  FDCE \payload_reg[21][2] 
       (.C(clk),
        .CE(\payload[21][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[21] [2]));
  FDCE \payload_reg[21][3] 
       (.C(clk),
        .CE(\payload[21][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[21] [3]));
  FDCE \payload_reg[21][4] 
       (.C(clk),
        .CE(\payload[21][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[21] [4]));
  FDCE \payload_reg[21][5] 
       (.C(clk),
        .CE(\payload[21][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[21] [5]));
  FDCE \payload_reg[21][6] 
       (.C(clk),
        .CE(\payload[21][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[21] [6]));
  FDCE \payload_reg[21][7] 
       (.C(clk),
        .CE(\payload[21][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[21] [7]));
  FDCE \payload_reg[22][0] 
       (.C(clk),
        .CE(\payload[22][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[22] [0]));
  FDCE \payload_reg[22][1] 
       (.C(clk),
        .CE(\payload[22][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[22] [1]));
  FDCE \payload_reg[22][2] 
       (.C(clk),
        .CE(\payload[22][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[22] [2]));
  FDCE \payload_reg[22][3] 
       (.C(clk),
        .CE(\payload[22][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[22] [3]));
  FDCE \payload_reg[22][4] 
       (.C(clk),
        .CE(\payload[22][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[22] [4]));
  FDCE \payload_reg[22][5] 
       (.C(clk),
        .CE(\payload[22][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[22] [5]));
  FDCE \payload_reg[22][6] 
       (.C(clk),
        .CE(\payload[22][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[22] [6]));
  FDCE \payload_reg[22][7] 
       (.C(clk),
        .CE(\payload[22][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[22] [7]));
  FDCE \payload_reg[23][0] 
       (.C(clk),
        .CE(\payload[23][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[23] [0]));
  FDCE \payload_reg[23][1] 
       (.C(clk),
        .CE(\payload[23][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[23] [1]));
  FDCE \payload_reg[23][2] 
       (.C(clk),
        .CE(\payload[23][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[23] [2]));
  FDCE \payload_reg[23][3] 
       (.C(clk),
        .CE(\payload[23][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[23] [3]));
  FDCE \payload_reg[23][4] 
       (.C(clk),
        .CE(\payload[23][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[23] [4]));
  FDCE \payload_reg[23][5] 
       (.C(clk),
        .CE(\payload[23][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[23] [5]));
  FDCE \payload_reg[23][6] 
       (.C(clk),
        .CE(\payload[23][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[23] [6]));
  FDCE \payload_reg[23][7] 
       (.C(clk),
        .CE(\payload[23][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[23] [7]));
  FDCE \payload_reg[24][0] 
       (.C(clk),
        .CE(\payload[24][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[24] [0]));
  FDCE \payload_reg[24][1] 
       (.C(clk),
        .CE(\payload[24][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[24] [1]));
  FDCE \payload_reg[24][2] 
       (.C(clk),
        .CE(\payload[24][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[24] [2]));
  FDCE \payload_reg[24][3] 
       (.C(clk),
        .CE(\payload[24][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[24] [3]));
  FDCE \payload_reg[24][4] 
       (.C(clk),
        .CE(\payload[24][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[24] [4]));
  FDCE \payload_reg[24][5] 
       (.C(clk),
        .CE(\payload[24][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[24] [5]));
  FDCE \payload_reg[24][6] 
       (.C(clk),
        .CE(\payload[24][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[24] [6]));
  FDCE \payload_reg[24][7] 
       (.C(clk),
        .CE(\payload[24][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[24] [7]));
  FDCE \payload_reg[25][0] 
       (.C(clk),
        .CE(\payload[25][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[25] [0]));
  FDCE \payload_reg[25][1] 
       (.C(clk),
        .CE(\payload[25][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[25] [1]));
  FDCE \payload_reg[25][2] 
       (.C(clk),
        .CE(\payload[25][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[25] [2]));
  FDCE \payload_reg[25][3] 
       (.C(clk),
        .CE(\payload[25][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[25] [3]));
  FDCE \payload_reg[25][4] 
       (.C(clk),
        .CE(\payload[25][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[25] [4]));
  FDCE \payload_reg[25][5] 
       (.C(clk),
        .CE(\payload[25][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[25] [5]));
  FDCE \payload_reg[25][6] 
       (.C(clk),
        .CE(\payload[25][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[25] [6]));
  FDCE \payload_reg[25][7] 
       (.C(clk),
        .CE(\payload[25][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[25] [7]));
  FDCE \payload_reg[26][0] 
       (.C(clk),
        .CE(\payload[26][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[26] [0]));
  FDCE \payload_reg[26][1] 
       (.C(clk),
        .CE(\payload[26][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[26] [1]));
  FDCE \payload_reg[26][2] 
       (.C(clk),
        .CE(\payload[26][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[26] [2]));
  FDCE \payload_reg[26][3] 
       (.C(clk),
        .CE(\payload[26][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[26] [3]));
  FDCE \payload_reg[26][4] 
       (.C(clk),
        .CE(\payload[26][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[26] [4]));
  FDCE \payload_reg[26][5] 
       (.C(clk),
        .CE(\payload[26][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[26] [5]));
  FDCE \payload_reg[26][6] 
       (.C(clk),
        .CE(\payload[26][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[26] [6]));
  FDCE \payload_reg[26][7] 
       (.C(clk),
        .CE(\payload[26][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[26] [7]));
  FDCE \payload_reg[27][0] 
       (.C(clk),
        .CE(\payload[27][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[27] [0]));
  FDCE \payload_reg[27][1] 
       (.C(clk),
        .CE(\payload[27][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[27] [1]));
  FDCE \payload_reg[27][2] 
       (.C(clk),
        .CE(\payload[27][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[27] [2]));
  FDCE \payload_reg[27][3] 
       (.C(clk),
        .CE(\payload[27][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[27] [3]));
  FDCE \payload_reg[27][4] 
       (.C(clk),
        .CE(\payload[27][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[27] [4]));
  FDCE \payload_reg[27][5] 
       (.C(clk),
        .CE(\payload[27][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[27] [5]));
  FDCE \payload_reg[27][6] 
       (.C(clk),
        .CE(\payload[27][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[27] [6]));
  FDCE \payload_reg[27][7] 
       (.C(clk),
        .CE(\payload[27][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[27] [7]));
  FDCE \payload_reg[28][0] 
       (.C(clk),
        .CE(\payload[28][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg_n_0_[28][0] ));
  FDCE \payload_reg[28][1] 
       (.C(clk),
        .CE(\payload[28][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg_n_0_[28][1] ));
  FDCE \payload_reg[28][2] 
       (.C(clk),
        .CE(\payload[28][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg_n_0_[28][2] ));
  FDCE \payload_reg[28][3] 
       (.C(clk),
        .CE(\payload[28][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg_n_0_[28][3] ));
  FDCE \payload_reg[28][4] 
       (.C(clk),
        .CE(\payload[28][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg_n_0_[28][4] ));
  FDCE \payload_reg[28][5] 
       (.C(clk),
        .CE(\payload[28][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg_n_0_[28][5] ));
  FDCE \payload_reg[28][6] 
       (.C(clk),
        .CE(\payload[28][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg_n_0_[28][6] ));
  FDCE \payload_reg[28][7] 
       (.C(clk),
        .CE(\payload[28][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg_n_0_[28][7] ));
  FDCE \payload_reg[29][0] 
       (.C(clk),
        .CE(\payload[29][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[29] [0]));
  FDCE \payload_reg[29][1] 
       (.C(clk),
        .CE(\payload[29][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[29] [1]));
  FDCE \payload_reg[29][2] 
       (.C(clk),
        .CE(\payload[29][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[29] [2]));
  FDCE \payload_reg[29][3] 
       (.C(clk),
        .CE(\payload[29][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[29] [3]));
  FDCE \payload_reg[29][4] 
       (.C(clk),
        .CE(\payload[29][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[29] [4]));
  FDCE \payload_reg[29][5] 
       (.C(clk),
        .CE(\payload[29][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[29] [5]));
  FDCE \payload_reg[29][6] 
       (.C(clk),
        .CE(\payload[29][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[29] [6]));
  FDCE \payload_reg[29][7] 
       (.C(clk),
        .CE(\payload[29][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[29] [7]));
  FDCE \payload_reg[2][0] 
       (.C(clk),
        .CE(\payload[2][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg_n_0_[2][0] ));
  FDCE \payload_reg[2][1] 
       (.C(clk),
        .CE(\payload[2][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg_n_0_[2][1] ));
  FDCE \payload_reg[2][2] 
       (.C(clk),
        .CE(\payload[2][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg_n_0_[2][2] ));
  FDCE \payload_reg[2][3] 
       (.C(clk),
        .CE(\payload[2][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg_n_0_[2][3] ));
  FDCE \payload_reg[2][4] 
       (.C(clk),
        .CE(\payload[2][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg_n_0_[2][4] ));
  FDCE \payload_reg[2][5] 
       (.C(clk),
        .CE(\payload[2][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg_n_0_[2][5] ));
  FDCE \payload_reg[2][6] 
       (.C(clk),
        .CE(\payload[2][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg_n_0_[2][6] ));
  FDCE \payload_reg[2][7] 
       (.C(clk),
        .CE(\payload[2][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg_n_0_[2][7] ));
  FDCE \payload_reg[30][0] 
       (.C(clk),
        .CE(\payload[30][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg_n_0_[30][0] ));
  FDCE \payload_reg[30][1] 
       (.C(clk),
        .CE(\payload[30][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg_n_0_[30][1] ));
  FDCE \payload_reg[30][2] 
       (.C(clk),
        .CE(\payload[30][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg_n_0_[30][2] ));
  FDCE \payload_reg[30][3] 
       (.C(clk),
        .CE(\payload[30][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg_n_0_[30][3] ));
  FDCE \payload_reg[30][4] 
       (.C(clk),
        .CE(\payload[30][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg_n_0_[30][4] ));
  FDCE \payload_reg[30][5] 
       (.C(clk),
        .CE(\payload[30][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg_n_0_[30][5] ));
  FDCE \payload_reg[30][6] 
       (.C(clk),
        .CE(\payload[30][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg_n_0_[30][6] ));
  FDCE \payload_reg[30][7] 
       (.C(clk),
        .CE(\payload[30][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg_n_0_[30][7] ));
  FDCE \payload_reg[31][0] 
       (.C(clk),
        .CE(\payload[31][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[31] [0]));
  FDCE \payload_reg[31][1] 
       (.C(clk),
        .CE(\payload[31][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[31] [1]));
  FDCE \payload_reg[31][2] 
       (.C(clk),
        .CE(\payload[31][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[31] [2]));
  FDCE \payload_reg[31][3] 
       (.C(clk),
        .CE(\payload[31][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[31] [3]));
  FDCE \payload_reg[31][4] 
       (.C(clk),
        .CE(\payload[31][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[31] [4]));
  FDCE \payload_reg[31][5] 
       (.C(clk),
        .CE(\payload[31][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[31] [5]));
  FDCE \payload_reg[31][6] 
       (.C(clk),
        .CE(\payload[31][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[31] [6]));
  FDCE \payload_reg[31][7] 
       (.C(clk),
        .CE(\payload[31][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[31] [7]));
  FDCE \payload_reg[3][0] 
       (.C(clk),
        .CE(\payload[3][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg_n_0_[3][0] ));
  FDCE \payload_reg[3][1] 
       (.C(clk),
        .CE(\payload[3][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg_n_0_[3][1] ));
  FDCE \payload_reg[3][2] 
       (.C(clk),
        .CE(\payload[3][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg_n_0_[3][2] ));
  FDCE \payload_reg[3][3] 
       (.C(clk),
        .CE(\payload[3][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg_n_0_[3][3] ));
  FDCE \payload_reg[3][4] 
       (.C(clk),
        .CE(\payload[3][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg_n_0_[3][4] ));
  FDCE \payload_reg[3][5] 
       (.C(clk),
        .CE(\payload[3][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg_n_0_[3][5] ));
  FDCE \payload_reg[3][6] 
       (.C(clk),
        .CE(\payload[3][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg_n_0_[3][6] ));
  FDCE \payload_reg[3][7] 
       (.C(clk),
        .CE(\payload[3][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg_n_0_[3][7] ));
  FDCE \payload_reg[4][0] 
       (.C(clk),
        .CE(\payload[4][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[4] [0]));
  FDCE \payload_reg[4][1] 
       (.C(clk),
        .CE(\payload[4][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[4] [1]));
  FDCE \payload_reg[4][2] 
       (.C(clk),
        .CE(\payload[4][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[4] [2]));
  FDCE \payload_reg[4][3] 
       (.C(clk),
        .CE(\payload[4][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[4] [3]));
  FDCE \payload_reg[4][4] 
       (.C(clk),
        .CE(\payload[4][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[4] [4]));
  FDCE \payload_reg[4][5] 
       (.C(clk),
        .CE(\payload[4][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[4] [5]));
  FDCE \payload_reg[4][6] 
       (.C(clk),
        .CE(\payload[4][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[4] [6]));
  FDCE \payload_reg[4][7] 
       (.C(clk),
        .CE(\payload[4][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[4] [7]));
  FDCE \payload_reg[5][0] 
       (.C(clk),
        .CE(\payload[5][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[5] [0]));
  FDCE \payload_reg[5][1] 
       (.C(clk),
        .CE(\payload[5][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[5] [1]));
  FDCE \payload_reg[5][2] 
       (.C(clk),
        .CE(\payload[5][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[5] [2]));
  FDCE \payload_reg[5][3] 
       (.C(clk),
        .CE(\payload[5][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[5] [3]));
  FDCE \payload_reg[5][4] 
       (.C(clk),
        .CE(\payload[5][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[5] [4]));
  FDCE \payload_reg[5][5] 
       (.C(clk),
        .CE(\payload[5][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[5] [5]));
  FDCE \payload_reg[5][6] 
       (.C(clk),
        .CE(\payload[5][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[5] [6]));
  FDCE \payload_reg[5][7] 
       (.C(clk),
        .CE(\payload[5][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[5] [7]));
  FDCE \payload_reg[6][0] 
       (.C(clk),
        .CE(\payload[6][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[6] [0]));
  FDCE \payload_reg[6][1] 
       (.C(clk),
        .CE(\payload[6][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[6] [1]));
  FDCE \payload_reg[6][2] 
       (.C(clk),
        .CE(\payload[6][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[6] [2]));
  FDCE \payload_reg[6][3] 
       (.C(clk),
        .CE(\payload[6][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[6] [3]));
  FDCE \payload_reg[6][4] 
       (.C(clk),
        .CE(\payload[6][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[6] [4]));
  FDCE \payload_reg[6][5] 
       (.C(clk),
        .CE(\payload[6][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[6] [5]));
  FDCE \payload_reg[6][6] 
       (.C(clk),
        .CE(\payload[6][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[6] [6]));
  FDCE \payload_reg[6][7] 
       (.C(clk),
        .CE(\payload[6][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[6] [7]));
  FDCE \payload_reg[7][0] 
       (.C(clk),
        .CE(\payload[7][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[7] [0]));
  FDCE \payload_reg[7][1] 
       (.C(clk),
        .CE(\payload[7][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[7] [1]));
  FDCE \payload_reg[7][2] 
       (.C(clk),
        .CE(\payload[7][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[7] [2]));
  FDCE \payload_reg[7][3] 
       (.C(clk),
        .CE(\payload[7][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[7] [3]));
  FDCE \payload_reg[7][4] 
       (.C(clk),
        .CE(\payload[7][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[7] [4]));
  FDCE \payload_reg[7][5] 
       (.C(clk),
        .CE(\payload[7][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[7] [5]));
  FDCE \payload_reg[7][6] 
       (.C(clk),
        .CE(\payload[7][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[7] [6]));
  FDCE \payload_reg[7][7] 
       (.C(clk),
        .CE(\payload[7][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[7] [7]));
  FDCE \payload_reg[8][0] 
       (.C(clk),
        .CE(\payload[8][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[8] [0]));
  FDCE \payload_reg[8][1] 
       (.C(clk),
        .CE(\payload[8][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[8] [1]));
  FDCE \payload_reg[8][2] 
       (.C(clk),
        .CE(\payload[8][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[8] [2]));
  FDCE \payload_reg[8][3] 
       (.C(clk),
        .CE(\payload[8][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[8] [3]));
  FDCE \payload_reg[8][4] 
       (.C(clk),
        .CE(\payload[8][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[8] [4]));
  FDCE \payload_reg[8][5] 
       (.C(clk),
        .CE(\payload[8][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[8] [5]));
  FDCE \payload_reg[8][6] 
       (.C(clk),
        .CE(\payload[8][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[8] [6]));
  FDCE \payload_reg[8][7] 
       (.C(clk),
        .CE(\payload[8][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[8] [7]));
  FDCE \payload_reg[9][0] 
       (.C(clk),
        .CE(\payload[9][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[0]),
        .Q(\payload_reg[9] [0]));
  FDCE \payload_reg[9][1] 
       (.C(clk),
        .CE(\payload[9][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[1]),
        .Q(\payload_reg[9] [1]));
  FDCE \payload_reg[9][2] 
       (.C(clk),
        .CE(\payload[9][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[2]),
        .Q(\payload_reg[9] [2]));
  FDCE \payload_reg[9][3] 
       (.C(clk),
        .CE(\payload[9][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[3]),
        .Q(\payload_reg[9] [3]));
  FDCE \payload_reg[9][4] 
       (.C(clk),
        .CE(\payload[9][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[4]),
        .Q(\payload_reg[9] [4]));
  FDCE \payload_reg[9][5] 
       (.C(clk),
        .CE(\payload[9][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[5]),
        .Q(\payload_reg[9] [5]));
  FDCE \payload_reg[9][6] 
       (.C(clk),
        .CE(\payload[9][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[6]),
        .Q(\payload_reg[9] [6]));
  FDCE \payload_reg[9][7] 
       (.C(clk),
        .CE(\payload[9][7]_i_1_n_0 ),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rx_byte[7]),
        .Q(\payload_reg[9] [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \rawdata[15]_i_1 
       (.I0(\rawdata[15]_i_3_n_0 ),
        .I1(rawdata0),
        .O(rawdata_valid4_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \rawdata[15]_i_10 
       (.I0(\payload_reg_n_0_[0][6] ),
        .I1(\payload_reg_n_0_[0][7] ),
        .I2(\payload_reg_n_0_[0][5] ),
        .I3(\payload_reg_n_0_[0][4] ),
        .O(\rawdata[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rawdata[15]_i_11 
       (.I0(\payload_reg_n_0_[0][3] ),
        .I1(\payload_reg_n_0_[0][2] ),
        .I2(\payload_reg_n_0_[0][1] ),
        .I3(\payload_reg_n_0_[0][0] ),
        .O(\rawdata[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \rawdata[15]_i_12 
       (.I0(\payload_reg_n_0_[1][0] ),
        .I1(\payload_reg_n_0_[1][1] ),
        .I2(\payload_reg_n_0_[1][3] ),
        .I3(\payload_reg_n_0_[1][2] ),
        .O(\rawdata[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rawdata[15]_i_13 
       (.I0(\payload_reg_n_0_[1][7] ),
        .I1(\payload_reg_n_0_[1][6] ),
        .I2(\payload_reg_n_0_[1][5] ),
        .I3(\payload_reg_n_0_[1][4] ),
        .O(\rawdata[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \rawdata[15]_i_14 
       (.I0(\payload_length_reg_n_0_[4] ),
        .I1(\payload_length_reg_n_0_[5] ),
        .I2(\payload_length_reg_n_0_[2] ),
        .I3(\payload_length_reg_n_0_[3] ),
        .I4(\payload_length_reg_n_0_[1] ),
        .I5(\payload_length_reg_n_0_[0] ),
        .O(rawdata29_in));
  LUT1 #(
    .INIT(2'h1)) 
    \rawdata[15]_i_2 
       (.I0(rst_n),
        .O(\rawdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \rawdata[15]_i_3 
       (.I0(\rawdata[15]_i_5_n_0 ),
        .I1(\rawdata[15]_i_6_n_0 ),
        .I2(\rawdata[15]_i_7_n_0 ),
        .I3(\rawdata[15]_i_8_n_0 ),
        .I4(\rawdata[15]_i_9_n_0 ),
        .O(\rawdata[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \rawdata[15]_i_4 
       (.I0(\rawdata[15]_i_10_n_0 ),
        .I1(\rawdata[15]_i_11_n_0 ),
        .I2(\rawdata[15]_i_12_n_0 ),
        .I3(\rawdata[15]_i_13_n_0 ),
        .I4(rawdata29_in),
        .O(rawdata0));
  LUT4 #(
    .INIT(16'hF99F)) 
    \rawdata[15]_i_5 
       (.I0(rx_byte[6]),
        .I1(\checksum_sum_reg_n_0_[6] ),
        .I2(rx_byte[7]),
        .I3(\checksum_sum_reg_n_0_[7] ),
        .O(\rawdata[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \rawdata[15]_i_6 
       (.I0(rx_valid),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .O(\rawdata[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF99F)) 
    \rawdata[15]_i_7 
       (.I0(\checksum_sum_reg_n_0_[5] ),
        .I1(rx_byte[5]),
        .I2(\checksum_sum_reg_n_0_[2] ),
        .I3(rx_byte[2]),
        .O(\rawdata[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF99F)) 
    \rawdata[15]_i_8 
       (.I0(\checksum_sum_reg_n_0_[1] ),
        .I1(rx_byte[1]),
        .I2(\checksum_sum_reg_n_0_[0] ),
        .I3(rx_byte[0]),
        .O(\rawdata[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF99F)) 
    \rawdata[15]_i_9 
       (.I0(\checksum_sum_reg_n_0_[4] ),
        .I1(rx_byte[4]),
        .I2(\checksum_sum_reg_n_0_[3] ),
        .I3(rx_byte[3]),
        .O(\rawdata[15]_i_9_n_0 ));
  FDCE \rawdata_reg[0] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[3][0] ),
        .Q(rawdata[0]));
  FDCE \rawdata_reg[10] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[2][2] ),
        .Q(rawdata[10]));
  FDCE \rawdata_reg[11] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[2][3] ),
        .Q(rawdata[11]));
  FDCE \rawdata_reg[12] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[2][4] ),
        .Q(rawdata[12]));
  FDCE \rawdata_reg[13] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[2][5] ),
        .Q(rawdata[13]));
  FDCE \rawdata_reg[14] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[2][6] ),
        .Q(rawdata[14]));
  FDCE \rawdata_reg[15] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[2][7] ),
        .Q(rawdata[15]));
  FDCE \rawdata_reg[1] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[3][1] ),
        .Q(rawdata[1]));
  FDCE \rawdata_reg[2] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[3][2] ),
        .Q(rawdata[2]));
  FDCE \rawdata_reg[3] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[3][3] ),
        .Q(rawdata[3]));
  FDCE \rawdata_reg[4] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[3][4] ),
        .Q(rawdata[4]));
  FDCE \rawdata_reg[5] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[3][5] ),
        .Q(rawdata[5]));
  FDCE \rawdata_reg[6] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[3][6] ),
        .Q(rawdata[6]));
  FDCE \rawdata_reg[7] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[3][7] ),
        .Q(rawdata[7]));
  FDCE \rawdata_reg[8] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[2][0] ),
        .Q(rawdata[8]));
  FDCE \rawdata_reg[9] 
       (.C(clk),
        .CE(rawdata_valid4_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[2][1] ),
        .Q(rawdata[9]));
  FDCE rawdata_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(rawdata_valid4_out),
        .Q(rawdata_valid));
  FDCE \signal_quality_reg[0] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[1][0] ),
        .Q(signal_quality[0]));
  FDCE \signal_quality_reg[1] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[1][1] ),
        .Q(signal_quality[1]));
  FDCE \signal_quality_reg[2] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[1][2] ),
        .Q(signal_quality[2]));
  FDCE \signal_quality_reg[3] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[1][3] ),
        .Q(signal_quality[3]));
  FDCE \signal_quality_reg[4] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[1][4] ),
        .Q(signal_quality[4]));
  FDCE \signal_quality_reg[5] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[1][5] ),
        .Q(signal_quality[5]));
  FDCE \signal_quality_reg[6] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[1][6] ),
        .Q(signal_quality[6]));
  FDCE \signal_quality_reg[7] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg_n_0_[1][7] ),
        .Q(signal_quality[7]));
  FDCE \theta_reg[0] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[9] [0]),
        .Q(theta[0]));
  FDCE \theta_reg[10] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[8] [2]),
        .Q(theta[10]));
  FDCE \theta_reg[11] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[8] [3]),
        .Q(theta[11]));
  FDCE \theta_reg[12] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[8] [4]),
        .Q(theta[12]));
  FDCE \theta_reg[13] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[8] [5]),
        .Q(theta[13]));
  FDCE \theta_reg[14] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[8] [6]),
        .Q(theta[14]));
  FDCE \theta_reg[15] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[8] [7]),
        .Q(theta[15]));
  FDCE \theta_reg[16] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[7] [0]),
        .Q(theta[16]));
  FDCE \theta_reg[17] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[7] [1]),
        .Q(theta[17]));
  FDCE \theta_reg[18] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[7] [2]),
        .Q(theta[18]));
  FDCE \theta_reg[19] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[7] [3]),
        .Q(theta[19]));
  FDCE \theta_reg[1] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[9] [1]),
        .Q(theta[1]));
  FDCE \theta_reg[20] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[7] [4]),
        .Q(theta[20]));
  FDCE \theta_reg[21] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[7] [5]),
        .Q(theta[21]));
  FDCE \theta_reg[22] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[7] [6]),
        .Q(theta[22]));
  FDCE \theta_reg[23] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[7] [7]),
        .Q(theta[23]));
  FDCE \theta_reg[2] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[9] [2]),
        .Q(theta[2]));
  FDCE \theta_reg[3] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[9] [3]),
        .Q(theta[3]));
  FDCE \theta_reg[4] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[9] [4]),
        .Q(theta[4]));
  FDCE \theta_reg[5] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[9] [5]),
        .Q(theta[5]));
  FDCE \theta_reg[6] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[9] [6]),
        .Q(theta[6]));
  FDCE \theta_reg[7] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[9] [7]),
        .Q(theta[7]));
  FDCE \theta_reg[8] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[8] [0]),
        .Q(theta[8]));
  FDCE \theta_reg[9] 
       (.C(clk),
        .CE(big_packet_valid0_out),
        .CLR(\rawdata[15]_i_2_n_0 ),
        .D(\payload_reg[8] [1]),
        .Q(theta[9]));
endmodule

(* CLKS_PER_BIT = "1736" *) (* DATA = "2'b10" *) (* HALF_CLKS = "868" *) 
(* IDLE = "2'b00" *) (* ORIG_REF_NAME = "uart_rx" *) (* START = "2'b01" *) 
(* STOP = "2'b11" *) 
module SYSTEM_eeg_pl_top_0_1_uart_rx
   (clk,
    rst_n,
    rx,
    data,
    valid);
  input clk;
  input rst_n;
  input rx;
  output [7:0]data;
  output valid;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire bit_idx;
  wire \bit_idx[0]_i_1_n_0 ;
  wire \bit_idx[1]_i_1_n_0 ;
  wire \bit_idx[2]_i_1_n_0 ;
  wire \bit_idx_reg_n_0_[0] ;
  wire \bit_idx_reg_n_0_[1] ;
  wire \bit_idx_reg_n_0_[2] ;
  wire clk;
  wire [31:0]cnt;
  wire \cnt_reg[12]_i_2_n_0 ;
  wire \cnt_reg[12]_i_2_n_1 ;
  wire \cnt_reg[12]_i_2_n_2 ;
  wire \cnt_reg[12]_i_2_n_3 ;
  wire \cnt_reg[12]_i_2_n_4 ;
  wire \cnt_reg[12]_i_2_n_5 ;
  wire \cnt_reg[12]_i_2_n_6 ;
  wire \cnt_reg[12]_i_2_n_7 ;
  wire \cnt_reg[16]_i_2_n_0 ;
  wire \cnt_reg[16]_i_2_n_1 ;
  wire \cnt_reg[16]_i_2_n_2 ;
  wire \cnt_reg[16]_i_2_n_3 ;
  wire \cnt_reg[16]_i_2_n_4 ;
  wire \cnt_reg[16]_i_2_n_5 ;
  wire \cnt_reg[16]_i_2_n_6 ;
  wire \cnt_reg[16]_i_2_n_7 ;
  wire \cnt_reg[20]_i_2_n_0 ;
  wire \cnt_reg[20]_i_2_n_1 ;
  wire \cnt_reg[20]_i_2_n_2 ;
  wire \cnt_reg[20]_i_2_n_3 ;
  wire \cnt_reg[20]_i_2_n_4 ;
  wire \cnt_reg[20]_i_2_n_5 ;
  wire \cnt_reg[20]_i_2_n_6 ;
  wire \cnt_reg[20]_i_2_n_7 ;
  wire \cnt_reg[24]_i_2_n_0 ;
  wire \cnt_reg[24]_i_2_n_1 ;
  wire \cnt_reg[24]_i_2_n_2 ;
  wire \cnt_reg[24]_i_2_n_3 ;
  wire \cnt_reg[24]_i_2_n_4 ;
  wire \cnt_reg[24]_i_2_n_5 ;
  wire \cnt_reg[24]_i_2_n_6 ;
  wire \cnt_reg[24]_i_2_n_7 ;
  wire \cnt_reg[28]_i_2_n_0 ;
  wire \cnt_reg[28]_i_2_n_1 ;
  wire \cnt_reg[28]_i_2_n_2 ;
  wire \cnt_reg[28]_i_2_n_3 ;
  wire \cnt_reg[28]_i_2_n_4 ;
  wire \cnt_reg[28]_i_2_n_5 ;
  wire \cnt_reg[28]_i_2_n_6 ;
  wire \cnt_reg[28]_i_2_n_7 ;
  wire \cnt_reg[31]_i_2_n_2 ;
  wire \cnt_reg[31]_i_2_n_3 ;
  wire \cnt_reg[31]_i_2_n_5 ;
  wire \cnt_reg[31]_i_2_n_6 ;
  wire \cnt_reg[31]_i_2_n_7 ;
  wire \cnt_reg[4]_i_2_n_0 ;
  wire \cnt_reg[4]_i_2_n_1 ;
  wire \cnt_reg[4]_i_2_n_2 ;
  wire \cnt_reg[4]_i_2_n_3 ;
  wire \cnt_reg[4]_i_2_n_4 ;
  wire \cnt_reg[4]_i_2_n_5 ;
  wire \cnt_reg[4]_i_2_n_6 ;
  wire \cnt_reg[4]_i_2_n_7 ;
  wire \cnt_reg[8]_i_2_n_0 ;
  wire \cnt_reg[8]_i_2_n_1 ;
  wire \cnt_reg[8]_i_2_n_2 ;
  wire \cnt_reg[8]_i_2_n_3 ;
  wire \cnt_reg[8]_i_2_n_4 ;
  wire \cnt_reg[8]_i_2_n_5 ;
  wire \cnt_reg[8]_i_2_n_6 ;
  wire \cnt_reg[8]_i_2_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[21] ;
  wire \cnt_reg_n_0_[22] ;
  wire \cnt_reg_n_0_[23] ;
  wire \cnt_reg_n_0_[24] ;
  wire \cnt_reg_n_0_[25] ;
  wire \cnt_reg_n_0_[26] ;
  wire \cnt_reg_n_0_[27] ;
  wire \cnt_reg_n_0_[28] ;
  wire \cnt_reg_n_0_[29] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[30] ;
  wire \cnt_reg_n_0_[31] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [7:0]data;
  wire \data[7]_i_10_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire \data[7]_i_4_n_0 ;
  wire \data[7]_i_5_n_0 ;
  wire \data[7]_i_6_n_0 ;
  wire \data[7]_i_7_n_0 ;
  wire \data[7]_i_8_n_0 ;
  wire \data[7]_i_9_n_0 ;
  wire p_0_in;
  wire rst_n;
  wire rx;
  wire rx_sync1;
  wire rx_sync2;
  wire \shift[0]_i_1_n_0 ;
  wire \shift[0]_i_2_n_0 ;
  wire \shift[1]_i_1_n_0 ;
  wire \shift[1]_i_2_n_0 ;
  wire \shift[2]_i_1_n_0 ;
  wire \shift[2]_i_2_n_0 ;
  wire \shift[3]_i_1_n_0 ;
  wire \shift[3]_i_2_n_0 ;
  wire \shift[4]_i_1_n_0 ;
  wire \shift[4]_i_2_n_0 ;
  wire \shift[5]_i_1_n_0 ;
  wire \shift[5]_i_2_n_0 ;
  wire \shift[6]_i_1_n_0 ;
  wire \shift[6]_i_2_n_0 ;
  wire \shift[7]_i_1_n_0 ;
  wire \shift[7]_i_2_n_0 ;
  wire \shift_reg_n_0_[0] ;
  wire \shift_reg_n_0_[1] ;
  wire \shift_reg_n_0_[2] ;
  wire \shift_reg_n_0_[3] ;
  wire \shift_reg_n_0_[4] ;
  wire \shift_reg_n_0_[5] ;
  wire \shift_reg_n_0_[6] ;
  wire \shift_reg_n_0_[7] ;
  wire [1:0]state__0;
  wire valid;
  wire [3:2]\NLW_cnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[31]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0F55F0330F550033)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(rx_sync2),
        .I2(p_0_in),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\bit_idx_reg_n_0_[1] ),
        .I1(\bit_idx_reg_n_0_[2] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0F22FF00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(rx_sync2),
        .I2(p_0_in),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(\data[7]_i_5_n_0 ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[29] ),
        .I4(\cnt_reg_n_0_[30] ),
        .I5(\data[7]_i_8_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\cnt_reg_n_0_[11] ),
        .I1(\cnt_reg_n_0_[12] ),
        .I2(\cnt_reg_n_0_[10] ),
        .I3(\FSM_sequential_state[1]_i_5_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEAAAAAAAAAAA)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\cnt_reg_n_0_[31] ),
        .I1(\cnt_reg_n_0_[9] ),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\FSM_sequential_state[1]_i_6_n_0 ),
        .I4(\cnt_reg_n_0_[7] ),
        .I5(\cnt_reg_n_0_[8] ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\cnt_reg_n_0_[14] ),
        .I1(\cnt_reg_n_0_[13] ),
        .I2(\cnt_reg_n_0_[16] ),
        .I3(\cnt_reg_n_0_[15] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA888)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(\cnt_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "START:01,DATA:10,IDLE:00,STOP:11" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4FE0)) 
    \bit_idx[0]_i_1 
       (.I0(state__0[1]),
        .I1(rx_sync2),
        .I2(bit_idx),
        .I3(\bit_idx_reg_n_0_[0] ),
        .O(\bit_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h74FFB800)) 
    \bit_idx[1]_i_1 
       (.I0(\bit_idx_reg_n_0_[0] ),
        .I1(state__0[1]),
        .I2(rx_sync2),
        .I3(bit_idx),
        .I4(\bit_idx_reg_n_0_[1] ),
        .O(\bit_idx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F70FFFF8F800000)) 
    \bit_idx[2]_i_1 
       (.I0(\bit_idx_reg_n_0_[0] ),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(state__0[1]),
        .I3(rx_sync2),
        .I4(bit_idx),
        .I5(\bit_idx_reg_n_0_[2] ),
        .O(\bit_idx[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00400F4000400040)) 
    \bit_idx[2]_i_2 
       (.I0(rx_sync2),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(p_0_in),
        .O(bit_idx));
  FDCE \bit_idx_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\bit_idx[0]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[0] ));
  FDCE \bit_idx_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\bit_idx[1]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[1] ));
  FDCE \bit_idx_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\bit_idx[2]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'h00004474)) 
    \cnt[0]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg_n_0_[0] ),
        .O(cnt[0]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[10]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[12]_i_2_n_6 ),
        .O(cnt[10]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[11]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[12]_i_2_n_5 ),
        .O(cnt[11]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[12]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[12]_i_2_n_4 ),
        .O(cnt[12]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[13]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[16]_i_2_n_7 ),
        .O(cnt[13]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[14]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[16]_i_2_n_6 ),
        .O(cnt[14]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[15]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[16]_i_2_n_5 ),
        .O(cnt[15]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[16]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[16]_i_2_n_4 ),
        .O(cnt[16]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[17]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[20]_i_2_n_7 ),
        .O(cnt[17]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[18]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[20]_i_2_n_6 ),
        .O(cnt[18]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[19]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[20]_i_2_n_5 ),
        .O(cnt[19]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[1]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[4]_i_2_n_7 ),
        .O(cnt[1]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[20]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[20]_i_2_n_4 ),
        .O(cnt[20]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[21]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[24]_i_2_n_7 ),
        .O(cnt[21]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[22]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[24]_i_2_n_6 ),
        .O(cnt[22]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[23]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[24]_i_2_n_5 ),
        .O(cnt[23]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[24]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[24]_i_2_n_4 ),
        .O(cnt[24]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[25]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[28]_i_2_n_7 ),
        .O(cnt[25]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[26]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[28]_i_2_n_6 ),
        .O(cnt[26]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[27]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[28]_i_2_n_5 ),
        .O(cnt[27]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[28]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[28]_i_2_n_4 ),
        .O(cnt[28]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[29]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[31]_i_2_n_7 ),
        .O(cnt[29]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[2]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[4]_i_2_n_6 ),
        .O(cnt[2]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[30]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[31]_i_2_n_6 ),
        .O(cnt[30]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[31]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[31]_i_2_n_5 ),
        .O(cnt[31]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[3]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[4]_i_2_n_5 ),
        .O(cnt[3]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[4]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[4]_i_2_n_4 ),
        .O(cnt[4]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[5]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[8]_i_2_n_7 ),
        .O(cnt[5]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[6]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[8]_i_2_n_6 ),
        .O(cnt[6]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[7]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[8]_i_2_n_5 ),
        .O(cnt[7]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[8]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[8]_i_2_n_4 ),
        .O(cnt[8]));
  LUT5 #(
    .INIT(32'h44740000)) 
    \cnt[9]_i_1 
       (.I0(p_0_in),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\cnt_reg[12]_i_2_n_7 ),
        .O(cnt[9]));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[10]),
        .Q(\cnt_reg_n_0_[10] ));
  FDCE \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[11]),
        .Q(\cnt_reg_n_0_[11] ));
  FDCE \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[12]),
        .Q(\cnt_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[12]_i_2 
       (.CI(\cnt_reg[8]_i_2_n_0 ),
        .CO({\cnt_reg[12]_i_2_n_0 ,\cnt_reg[12]_i_2_n_1 ,\cnt_reg[12]_i_2_n_2 ,\cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_2_n_4 ,\cnt_reg[12]_i_2_n_5 ,\cnt_reg[12]_i_2_n_6 ,\cnt_reg[12]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] }));
  FDCE \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[13]),
        .Q(\cnt_reg_n_0_[13] ));
  FDCE \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[14]),
        .Q(\cnt_reg_n_0_[14] ));
  FDCE \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[15]),
        .Q(\cnt_reg_n_0_[15] ));
  FDCE \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[16]),
        .Q(\cnt_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[16]_i_2 
       (.CI(\cnt_reg[12]_i_2_n_0 ),
        .CO({\cnt_reg[16]_i_2_n_0 ,\cnt_reg[16]_i_2_n_1 ,\cnt_reg[16]_i_2_n_2 ,\cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_2_n_4 ,\cnt_reg[16]_i_2_n_5 ,\cnt_reg[16]_i_2_n_6 ,\cnt_reg[16]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[16] ,\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }));
  FDCE \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[17]),
        .Q(\cnt_reg_n_0_[17] ));
  FDCE \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[18]),
        .Q(\cnt_reg_n_0_[18] ));
  FDCE \cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[19]),
        .Q(\cnt_reg_n_0_[19] ));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE \cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[20]),
        .Q(\cnt_reg_n_0_[20] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[20]_i_2 
       (.CI(\cnt_reg[16]_i_2_n_0 ),
        .CO({\cnt_reg[20]_i_2_n_0 ,\cnt_reg[20]_i_2_n_1 ,\cnt_reg[20]_i_2_n_2 ,\cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_2_n_4 ,\cnt_reg[20]_i_2_n_5 ,\cnt_reg[20]_i_2_n_6 ,\cnt_reg[20]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[20] ,\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] }));
  FDCE \cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[21]),
        .Q(\cnt_reg_n_0_[21] ));
  FDCE \cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[22]),
        .Q(\cnt_reg_n_0_[22] ));
  FDCE \cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[23]),
        .Q(\cnt_reg_n_0_[23] ));
  FDCE \cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[24]),
        .Q(\cnt_reg_n_0_[24] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[24]_i_2 
       (.CI(\cnt_reg[20]_i_2_n_0 ),
        .CO({\cnt_reg[24]_i_2_n_0 ,\cnt_reg[24]_i_2_n_1 ,\cnt_reg[24]_i_2_n_2 ,\cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[24]_i_2_n_4 ,\cnt_reg[24]_i_2_n_5 ,\cnt_reg[24]_i_2_n_6 ,\cnt_reg[24]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[24] ,\cnt_reg_n_0_[23] ,\cnt_reg_n_0_[22] ,\cnt_reg_n_0_[21] }));
  FDCE \cnt_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[25]),
        .Q(\cnt_reg_n_0_[25] ));
  FDCE \cnt_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[26]),
        .Q(\cnt_reg_n_0_[26] ));
  FDCE \cnt_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[27]),
        .Q(\cnt_reg_n_0_[27] ));
  FDCE \cnt_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[28]),
        .Q(\cnt_reg_n_0_[28] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[28]_i_2 
       (.CI(\cnt_reg[24]_i_2_n_0 ),
        .CO({\cnt_reg[28]_i_2_n_0 ,\cnt_reg[28]_i_2_n_1 ,\cnt_reg[28]_i_2_n_2 ,\cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[28]_i_2_n_4 ,\cnt_reg[28]_i_2_n_5 ,\cnt_reg[28]_i_2_n_6 ,\cnt_reg[28]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[28] ,\cnt_reg_n_0_[27] ,\cnt_reg_n_0_[26] ,\cnt_reg_n_0_[25] }));
  FDCE \cnt_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[29]),
        .Q(\cnt_reg_n_0_[29] ));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE \cnt_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[30]),
        .Q(\cnt_reg_n_0_[30] ));
  FDCE \cnt_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[31]),
        .Q(\cnt_reg_n_0_[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[31]_i_2 
       (.CI(\cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_cnt_reg[31]_i_2_CO_UNCONNECTED [3:2],\cnt_reg[31]_i_2_n_2 ,\cnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[31]_i_2_O_UNCONNECTED [3],\cnt_reg[31]_i_2_n_5 ,\cnt_reg[31]_i_2_n_6 ,\cnt_reg[31]_i_2_n_7 }),
        .S({1'b0,\cnt_reg_n_0_[31] ,\cnt_reg_n_0_[30] ,\cnt_reg_n_0_[29] }));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_2_n_0 ,\cnt_reg[4]_i_2_n_1 ,\cnt_reg[4]_i_2_n_2 ,\cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_2_n_4 ,\cnt_reg[4]_i_2_n_5 ,\cnt_reg[4]_i_2_n_6 ,\cnt_reg[4]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] }));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[7]),
        .Q(\cnt_reg_n_0_[7] ));
  FDCE \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[8]),
        .Q(\cnt_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[8]_i_2 
       (.CI(\cnt_reg[4]_i_2_n_0 ),
        .CO({\cnt_reg[8]_i_2_n_0 ,\cnt_reg[8]_i_2_n_1 ,\cnt_reg[8]_i_2_n_2 ,\cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_2_n_4 ,\cnt_reg[8]_i_2_n_5 ,\cnt_reg[8]_i_2_n_6 ,\cnt_reg[8]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[8] ,\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }));
  FDCE \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(cnt[9]),
        .Q(\cnt_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \data[7]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(p_0_in),
        .I3(rx_sync2),
        .O(\data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data[7]_i_10 
       (.I0(\cnt_reg_n_0_[22] ),
        .I1(\cnt_reg_n_0_[21] ),
        .I2(\cnt_reg_n_0_[24] ),
        .I3(\cnt_reg_n_0_[23] ),
        .O(\data[7]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data[7]_i_2 
       (.I0(rst_n),
        .O(\data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data[7]_i_3 
       (.I0(\data[7]_i_4_n_0 ),
        .I1(\data[7]_i_5_n_0 ),
        .I2(\cnt_reg_n_0_[31] ),
        .I3(\data[7]_i_6_n_0 ),
        .I4(\data[7]_i_7_n_0 ),
        .I5(\data[7]_i_8_n_0 ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data[7]_i_4 
       (.I0(\cnt_reg_n_0_[12] ),
        .I1(\cnt_reg_n_0_[11] ),
        .I2(\cnt_reg_n_0_[15] ),
        .I3(\cnt_reg_n_0_[16] ),
        .I4(\cnt_reg_n_0_[13] ),
        .I5(\cnt_reg_n_0_[14] ),
        .O(\data[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data[7]_i_5 
       (.I0(\cnt_reg_n_0_[26] ),
        .I1(\cnt_reg_n_0_[25] ),
        .I2(\cnt_reg_n_0_[28] ),
        .I3(\cnt_reg_n_0_[27] ),
        .O(\data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA888888800000000)) 
    \data[7]_i_6 
       (.I0(\cnt_reg_n_0_[9] ),
        .I1(\cnt_reg_n_0_[8] ),
        .I2(\cnt_reg_n_0_[7] ),
        .I3(\data[7]_i_9_n_0 ),
        .I4(\cnt_reg_n_0_[6] ),
        .I5(\cnt_reg_n_0_[10] ),
        .O(\data[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data[7]_i_7 
       (.I0(\cnt_reg_n_0_[29] ),
        .I1(\cnt_reg_n_0_[30] ),
        .O(\data[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data[7]_i_8 
       (.I0(\cnt_reg_n_0_[19] ),
        .I1(\cnt_reg_n_0_[20] ),
        .I2(\cnt_reg_n_0_[17] ),
        .I3(\cnt_reg_n_0_[18] ),
        .I4(\data[7]_i_10_n_0 ),
        .O(\data[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \data[7]_i_9 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(\data[7]_i_9_n_0 ));
  FDCE \data_reg[0] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift_reg_n_0_[0] ),
        .Q(data[0]));
  FDCE \data_reg[1] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift_reg_n_0_[1] ),
        .Q(data[1]));
  FDCE \data_reg[2] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift_reg_n_0_[2] ),
        .Q(data[2]));
  FDCE \data_reg[3] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift_reg_n_0_[3] ),
        .Q(data[3]));
  FDCE \data_reg[4] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift_reg_n_0_[4] ),
        .Q(data[4]));
  FDCE \data_reg[5] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift_reg_n_0_[5] ),
        .Q(data[5]));
  FDCE \data_reg[6] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift_reg_n_0_[6] ),
        .Q(data[6]));
  FDCE \data_reg[7] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift_reg_n_0_[7] ),
        .Q(data[7]));
  FDPE rx_sync1_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx),
        .PRE(\data[7]_i_2_n_0 ),
        .Q(rx_sync1));
  FDPE rx_sync2_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx_sync1),
        .PRE(\data[7]_i_2_n_0 ),
        .Q(rx_sync2));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \shift[0]_i_1 
       (.I0(rx_sync2),
        .I1(state__0[0]),
        .I2(p_0_in),
        .I3(\shift[0]_i_2_n_0 ),
        .I4(state__0[1]),
        .I5(\shift_reg_n_0_[0] ),
        .O(\shift[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \shift[0]_i_2 
       (.I0(\bit_idx_reg_n_0_[2] ),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .O(\shift[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \shift[1]_i_1 
       (.I0(rx_sync2),
        .I1(state__0[0]),
        .I2(p_0_in),
        .I3(\shift[1]_i_2_n_0 ),
        .I4(state__0[1]),
        .I5(\shift_reg_n_0_[1] ),
        .O(\shift[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \shift[1]_i_2 
       (.I0(\bit_idx_reg_n_0_[2] ),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .O(\shift[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \shift[2]_i_1 
       (.I0(rx_sync2),
        .I1(state__0[0]),
        .I2(p_0_in),
        .I3(\shift[2]_i_2_n_0 ),
        .I4(state__0[1]),
        .I5(\shift_reg_n_0_[2] ),
        .O(\shift[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \shift[2]_i_2 
       (.I0(\bit_idx_reg_n_0_[2] ),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .O(\shift[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \shift[3]_i_1 
       (.I0(rx_sync2),
        .I1(state__0[0]),
        .I2(p_0_in),
        .I3(\shift[3]_i_2_n_0 ),
        .I4(state__0[1]),
        .I5(\shift_reg_n_0_[3] ),
        .O(\shift[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \shift[3]_i_2 
       (.I0(\bit_idx_reg_n_0_[2] ),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .O(\shift[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \shift[4]_i_1 
       (.I0(rx_sync2),
        .I1(state__0[0]),
        .I2(p_0_in),
        .I3(\shift[4]_i_2_n_0 ),
        .I4(state__0[1]),
        .I5(\shift_reg_n_0_[4] ),
        .O(\shift[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \shift[4]_i_2 
       (.I0(\bit_idx_reg_n_0_[2] ),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .O(\shift[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \shift[5]_i_1 
       (.I0(rx_sync2),
        .I1(state__0[0]),
        .I2(p_0_in),
        .I3(\shift[5]_i_2_n_0 ),
        .I4(state__0[1]),
        .I5(\shift_reg_n_0_[5] ),
        .O(\shift[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \shift[5]_i_2 
       (.I0(\bit_idx_reg_n_0_[2] ),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .O(\shift[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \shift[6]_i_1 
       (.I0(rx_sync2),
        .I1(state__0[0]),
        .I2(p_0_in),
        .I3(\shift[6]_i_2_n_0 ),
        .I4(state__0[1]),
        .I5(\shift_reg_n_0_[6] ),
        .O(\shift[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \shift[6]_i_2 
       (.I0(\bit_idx_reg_n_0_[2] ),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .O(\shift[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \shift[7]_i_1 
       (.I0(rx_sync2),
        .I1(state__0[0]),
        .I2(p_0_in),
        .I3(\shift[7]_i_2_n_0 ),
        .I4(state__0[1]),
        .I5(\shift_reg_n_0_[7] ),
        .O(\shift[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \shift[7]_i_2 
       (.I0(\bit_idx_reg_n_0_[2] ),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .O(\shift[7]_i_2_n_0 ));
  FDCE \shift_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift[0]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[0] ));
  FDCE \shift_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift[1]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[1] ));
  FDCE \shift_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift[2]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[2] ));
  FDCE \shift_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift[3]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[3] ));
  FDCE \shift_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift[4]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[4] ));
  FDCE \shift_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift[5]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[5] ));
  FDCE \shift_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift[6]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[6] ));
  FDCE \shift_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\shift[7]_i_1_n_0 ),
        .Q(\shift_reg_n_0_[7] ));
  FDCE valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\data[7]_i_2_n_0 ),
        .D(\data[7]_i_1_n_0 ),
        .Q(valid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
