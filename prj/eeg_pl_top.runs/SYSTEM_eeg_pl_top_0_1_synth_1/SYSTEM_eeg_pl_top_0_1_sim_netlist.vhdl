-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Nov  4 03:03:49 2026
-- Host        : LAPTOP-PNSLBKDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SYSTEM_eeg_pl_top_0_1_sim_netlist.vhdl
-- Design      : SYSTEM_eeg_pl_top_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tgam_parser is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    rx_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_valid : in STD_LOGIC;
    rawdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rawdata_valid : out STD_LOGIC;
    delta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    theta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    low_alpha : out STD_LOGIC_VECTOR ( 23 downto 0 );
    high_alpha : out STD_LOGIC_VECTOR ( 23 downto 0 );
    low_beta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    high_beta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    low_gamma : out STD_LOGIC_VECTOR ( 23 downto 0 );
    middle_gamma : out STD_LOGIC_VECTOR ( 23 downto 0 );
    attention : out STD_LOGIC_VECTOR ( 7 downto 0 );
    meditation : out STD_LOGIC_VECTOR ( 7 downto 0 );
    signal_quality : out STD_LOGIC_VECTOR ( 7 downto 0 );
    big_packet_valid : out STD_LOGIC
  );
  attribute S_CHECK : string;
  attribute S_CHECK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tgam_parser : entity is "3'b100";
  attribute S_IDLE : string;
  attribute S_IDLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tgam_parser : entity is "3'b000";
  attribute S_LENGTH : string;
  attribute S_LENGTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tgam_parser : entity is "3'b010";
  attribute S_PAYLOAD : string;
  attribute S_PAYLOAD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tgam_parser : entity is "3'b011";
  attribute S_SYNC2 : string;
  attribute S_SYNC2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tgam_parser : entity is "3'b001";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tgam_parser;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tgam_parser is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal big_packet_valid0_out : STD_LOGIC;
  signal checksum_sum : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \checksum_sum[3]_i_3_n_0\ : STD_LOGIC;
  signal \checksum_sum[3]_i_4_n_0\ : STD_LOGIC;
  signal \checksum_sum[3]_i_5_n_0\ : STD_LOGIC;
  signal \checksum_sum[3]_i_6_n_0\ : STD_LOGIC;
  signal \checksum_sum[7]_i_1_n_0\ : STD_LOGIC;
  signal \checksum_sum[7]_i_4_n_0\ : STD_LOGIC;
  signal \checksum_sum[7]_i_5_n_0\ : STD_LOGIC;
  signal \checksum_sum[7]_i_6_n_0\ : STD_LOGIC;
  signal \checksum_sum[7]_i_7_n_0\ : STD_LOGIC;
  signal \checksum_sum_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \checksum_sum_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \checksum_sum_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \checksum_sum_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \checksum_sum_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \checksum_sum_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \checksum_sum_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \checksum_sum_reg_n_0_[0]\ : STD_LOGIC;
  signal \checksum_sum_reg_n_0_[1]\ : STD_LOGIC;
  signal \checksum_sum_reg_n_0_[2]\ : STD_LOGIC;
  signal \checksum_sum_reg_n_0_[3]\ : STD_LOGIC;
  signal \checksum_sum_reg_n_0_[4]\ : STD_LOGIC;
  signal \checksum_sum_reg_n_0_[5]\ : STD_LOGIC;
  signal \checksum_sum_reg_n_0_[6]\ : STD_LOGIC;
  signal \checksum_sum_reg_n_0_[7]\ : STD_LOGIC;
  signal \delta[23]_i_10_n_0\ : STD_LOGIC;
  signal \delta[23]_i_11_n_0\ : STD_LOGIC;
  signal \delta[23]_i_12_n_0\ : STD_LOGIC;
  signal \delta[23]_i_13_n_0\ : STD_LOGIC;
  signal \delta[23]_i_2_n_0\ : STD_LOGIC;
  signal \delta[23]_i_3_n_0\ : STD_LOGIC;
  signal \delta[23]_i_4_n_0\ : STD_LOGIC;
  signal \delta[23]_i_5_n_0\ : STD_LOGIC;
  signal \delta[23]_i_6_n_0\ : STD_LOGIC;
  signal \delta[23]_i_7_n_0\ : STD_LOGIC;
  signal \delta[23]_i_8_n_0\ : STD_LOGIC;
  signal \delta[23]_i_9_n_0\ : STD_LOGIC;
  signal in42 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \payload[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \payload[0][7]_i_3_n_0\ : STD_LOGIC;
  signal \payload[0][7]_i_4_n_0\ : STD_LOGIC;
  signal \payload[0][7]_i_5_n_0\ : STD_LOGIC;
  signal \payload[10][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[11][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[12][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[13][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[14][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[15][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[16][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[17][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[18][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[18][7]_i_2_n_0\ : STD_LOGIC;
  signal \payload[19][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \payload[20][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[21][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[22][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[23][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[24][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[25][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[26][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[27][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[28][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[28][7]_i_2_n_0\ : STD_LOGIC;
  signal \payload[29][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \payload[30][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[31][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[8][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[9][7]_i_1_n_0\ : STD_LOGIC;
  signal \payload[9][7]_i_2_n_0\ : STD_LOGIC;
  signal payload_index : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \payload_index[5]_i_1_n_0\ : STD_LOGIC;
  signal \payload_index[5]_i_3_n_0\ : STD_LOGIC;
  signal \payload_index[5]_i_4_n_0\ : STD_LOGIC;
  signal \payload_index[5]_i_5_n_0\ : STD_LOGIC;
  signal \payload_index[5]_i_6_n_0\ : STD_LOGIC;
  signal \payload_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \payload_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \payload_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \payload_index_reg_n_0_[3]\ : STD_LOGIC;
  signal \payload_index_reg_n_0_[4]\ : STD_LOGIC;
  signal \payload_index_reg_n_0_[5]\ : STD_LOGIC;
  signal \payload_length[5]_i_1_n_0\ : STD_LOGIC;
  signal \payload_length_reg_n_0_[0]\ : STD_LOGIC;
  signal \payload_length_reg_n_0_[1]\ : STD_LOGIC;
  signal \payload_length_reg_n_0_[2]\ : STD_LOGIC;
  signal \payload_length_reg_n_0_[3]\ : STD_LOGIC;
  signal \payload_length_reg_n_0_[4]\ : STD_LOGIC;
  signal \payload_length_reg_n_0_[5]\ : STD_LOGIC;
  signal \payload_reg[10]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[11]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[12]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[13]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[14]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[15]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[16]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[17]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[18]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[19]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[20]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[21]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[22]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[23]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[24]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[25]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[26]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[27]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[29]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[31]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[8]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg[9]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \payload_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \payload_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \payload_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \payload_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \payload_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \payload_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \payload_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \payload_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \payload_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \payload_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \payload_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \payload_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \payload_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \payload_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \payload_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \payload_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \payload_reg_n_0_[28][0]\ : STD_LOGIC;
  signal \payload_reg_n_0_[28][1]\ : STD_LOGIC;
  signal \payload_reg_n_0_[28][2]\ : STD_LOGIC;
  signal \payload_reg_n_0_[28][3]\ : STD_LOGIC;
  signal \payload_reg_n_0_[28][4]\ : STD_LOGIC;
  signal \payload_reg_n_0_[28][5]\ : STD_LOGIC;
  signal \payload_reg_n_0_[28][6]\ : STD_LOGIC;
  signal \payload_reg_n_0_[28][7]\ : STD_LOGIC;
  signal \payload_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \payload_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \payload_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \payload_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \payload_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \payload_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \payload_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \payload_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \payload_reg_n_0_[30][0]\ : STD_LOGIC;
  signal \payload_reg_n_0_[30][1]\ : STD_LOGIC;
  signal \payload_reg_n_0_[30][2]\ : STD_LOGIC;
  signal \payload_reg_n_0_[30][3]\ : STD_LOGIC;
  signal \payload_reg_n_0_[30][4]\ : STD_LOGIC;
  signal \payload_reg_n_0_[30][5]\ : STD_LOGIC;
  signal \payload_reg_n_0_[30][6]\ : STD_LOGIC;
  signal \payload_reg_n_0_[30][7]\ : STD_LOGIC;
  signal \payload_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \payload_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \payload_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \payload_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \payload_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \payload_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \payload_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \payload_reg_n_0_[3][7]\ : STD_LOGIC;
  signal rawdata0 : STD_LOGIC;
  signal rawdata29_in : STD_LOGIC;
  signal \rawdata[15]_i_10_n_0\ : STD_LOGIC;
  signal \rawdata[15]_i_11_n_0\ : STD_LOGIC;
  signal \rawdata[15]_i_12_n_0\ : STD_LOGIC;
  signal \rawdata[15]_i_13_n_0\ : STD_LOGIC;
  signal \rawdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \rawdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \rawdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \rawdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \rawdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \rawdata[15]_i_8_n_0\ : STD_LOGIC;
  signal \rawdata[15]_i_9_n_0\ : STD_LOGIC;
  signal rawdata_valid4_out : STD_LOGIC;
  signal state1 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_checksum_sum_reg[7]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_10\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_11\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_13\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_19\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_9\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S_SYNC2:001,S_LENGTH:010,S_PAYLOAD:011,S_IDLE:000,S_CHECK:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S_SYNC2:001,S_LENGTH:010,S_PAYLOAD:011,S_IDLE:000,S_CHECK:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "S_SYNC2:001,S_LENGTH:010,S_PAYLOAD:011,S_IDLE:000,S_CHECK:100";
  attribute SOFT_HLUTNM of \checksum_sum[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \checksum_sum[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \checksum_sum[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \checksum_sum[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \checksum_sum[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \checksum_sum[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \checksum_sum[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \checksum_sum[7]_i_2\ : label is "soft_lutpair22";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \checksum_sum_reg[3]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \checksum_sum_reg[7]_i_3\ : label is 35;
  attribute SOFT_HLUTNM of \delta[23]_i_12\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \delta[23]_i_13\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \payload[0][7]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \payload[0][7]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \payload[18][7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \payload[1][7]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \payload[28][7]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \payload[2][7]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \payload[9][7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \payload_index[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \payload_index[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \payload_index[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \payload_index[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \payload_index[5]_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \payload_length[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rawdata[15]_i_10\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rawdata[15]_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rawdata[15]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rawdata[15]_i_8\ : label is "soft_lutpair16";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \state__1\(0),
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D5"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      O => \state__1\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \state__1\(1),
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_3_n_0\,
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => \FSM_sequential_state[1]_i_5_n_0\,
      I3 => \FSM_sequential_state[1]_i_6_n_0\,
      I4 => \FSM_sequential_state[1]_i_7_n_0\,
      I5 => \FSM_sequential_state[1]_i_8_n_0\,
      O => \state__1\(1)
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => rx_byte(2),
      I1 => rx_byte(5),
      I2 => rx_byte(7),
      I3 => rx_byte(6),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rx_byte(1),
      I1 => rx_byte(0),
      I2 => rx_byte(4),
      I3 => rx_byte(3),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rx_byte(0),
      I1 => rx_byte(1),
      I2 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => rx_byte(6),
      I3 => rx_byte(7),
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rx_byte(4),
      I1 => rx_byte(5),
      I2 => rx_byte(2),
      I3 => rx_byte(3),
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => \state__1\(2),
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => \FSM_sequential_state[2]_i_5_n_0\,
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50D4"
    )
        port map (
      I0 => \payload_index_reg_n_0_[1]\,
      I1 => \payload_length_reg_n_0_[0]\,
      I2 => \payload_length_reg_n_0_[1]\,
      I3 => \payload_index_reg_n_0_[0]\,
      O => \FSM_sequential_state[2]_i_10_n_0\
    );
\FSM_sequential_state[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \payload_length_reg_n_0_[2]\,
      I1 => \payload_index_reg_n_0_[2]\,
      I2 => \payload_index_reg_n_0_[3]\,
      I3 => \payload_length_reg_n_0_[3]\,
      O => \FSM_sequential_state[2]_i_11_n_0\
    );
\FSM_sequential_state[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \payload_length_reg_n_0_[4]\,
      I1 => \payload_index_reg_n_0_[4]\,
      I2 => \payload_index_reg_n_0_[5]\,
      I3 => \payload_length_reg_n_0_[5]\,
      O => \FSM_sequential_state[2]_i_12_n_0\
    );
\FSM_sequential_state[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state__0\(2),
      I1 => rx_valid,
      I2 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_13_n_0\
    );
\FSM_sequential_state[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \payload_length_reg_n_0_[4]\,
      I1 => \payload_length_reg_n_0_[2]\,
      I2 => \payload_length_reg_n_0_[0]\,
      I3 => \payload_length_reg_n_0_[1]\,
      I4 => \payload_length_reg_n_0_[3]\,
      I5 => \payload_length_reg_n_0_[5]\,
      O => state1(5)
    );
\FSM_sequential_state[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => \payload_length_reg_n_0_[4]\,
      I1 => \payload_index_reg_n_0_[4]\,
      I2 => \payload_length_reg_n_0_[3]\,
      I3 => \payload_length_reg_n_0_[1]\,
      I4 => \payload_length_reg_n_0_[0]\,
      I5 => \payload_length_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_15_n_0\
    );
\FSM_sequential_state[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004200210010880"
    )
        port map (
      I0 => \payload_index_reg_n_0_[0]\,
      I1 => \payload_index_reg_n_0_[1]\,
      I2 => \payload_index_reg_n_0_[2]\,
      I3 => \payload_length_reg_n_0_[2]\,
      I4 => \payload_length_reg_n_0_[0]\,
      I5 => \payload_length_reg_n_0_[1]\,
      O => \FSM_sequential_state[2]_i_16_n_0\
    );
\FSM_sequential_state[2]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => \payload_index_reg_n_0_[3]\,
      I1 => \payload_length_reg_n_0_[3]\,
      I2 => \payload_length_reg_n_0_[1]\,
      I3 => \payload_length_reg_n_0_[0]\,
      I4 => \payload_length_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_17_n_0\
    );
\FSM_sequential_state[2]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rx_byte(6),
      I1 => rx_byte(7),
      I2 => rx_byte(4),
      I3 => rx_byte(5),
      O => \FSM_sequential_state[2]_i_18_n_0\
    );
\FSM_sequential_state[2]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rx_byte(0),
      I1 => rx_byte(1),
      I2 => rx_byte(2),
      I3 => rx_byte(3),
      O => \FSM_sequential_state[2]_i_19_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88888000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_7_n_0\,
      I1 => \FSM_sequential_state[2]_i_8_n_0\,
      I2 => \FSM_sequential_state[2]_i_9_n_0\,
      I3 => \FSM_sequential_state[2]_i_10_n_0\,
      I4 => \FSM_sequential_state[2]_i_11_n_0\,
      I5 => \FSM_sequential_state[2]_i_12_n_0\,
      O => \state__1\(2)
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000000000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_13_n_0\,
      I1 => state1(5),
      I2 => \payload_index_reg_n_0_[5]\,
      I3 => \FSM_sequential_state[2]_i_15_n_0\,
      I4 => \FSM_sequential_state[2]_i_16_n_0\,
      I5 => \FSM_sequential_state[2]_i_17_n_0\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700040004000400"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => rx_valid,
      I4 => \FSM_sequential_state[2]_i_18_n_0\,
      I5 => \FSM_sequential_state[2]_i_19_n_0\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222AAA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_13_n_0\,
      I1 => \FSM_sequential_state[2]_i_8_n_0\,
      I2 => \FSM_sequential_state[2]_i_9_n_0\,
      I3 => \FSM_sequential_state[2]_i_10_n_0\,
      I4 => \FSM_sequential_state[2]_i_11_n_0\,
      I5 => \FSM_sequential_state[2]_i_12_n_0\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1040"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => rx_valid,
      I3 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD0D"
    )
        port map (
      I0 => \payload_index_reg_n_0_[5]\,
      I1 => \payload_length_reg_n_0_[5]\,
      I2 => \payload_index_reg_n_0_[4]\,
      I3 => \payload_length_reg_n_0_[4]\,
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD0D"
    )
        port map (
      I0 => \payload_index_reg_n_0_[3]\,
      I1 => \payload_length_reg_n_0_[3]\,
      I2 => \payload_index_reg_n_0_[2]\,
      I3 => \payload_length_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rawdata[15]_i_2_n_0\,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rawdata[15]_i_2_n_0\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rawdata[15]_i_2_n_0\,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2)
    );
\attention_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[29]\(0),
      Q => attention(0)
    );
\attention_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[29]\(1),
      Q => attention(1)
    );
\attention_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[29]\(2),
      Q => attention(2)
    );
\attention_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[29]\(3),
      Q => attention(3)
    );
\attention_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[29]\(4),
      Q => attention(4)
    );
\attention_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[29]\(5),
      Q => attention(5)
    );
\attention_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[29]\(6),
      Q => attention(6)
    );
\attention_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[29]\(7),
      Q => attention(7)
    );
big_packet_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rawdata[15]_i_2_n_0\,
      D => big_packet_valid0_out,
      Q => big_packet_valid
    );
\checksum_sum[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in42(0),
      O => checksum_sum(0)
    );
\checksum_sum[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in42(1),
      O => checksum_sum(1)
    );
\checksum_sum[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in42(2),
      O => checksum_sum(2)
    );
\checksum_sum[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in42(3),
      O => checksum_sum(3)
    );
\checksum_sum[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \checksum_sum_reg_n_0_[3]\,
      I1 => rx_byte(3),
      O => \checksum_sum[3]_i_3_n_0\
    );
\checksum_sum[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \checksum_sum_reg_n_0_[2]\,
      I1 => rx_byte(2),
      O => \checksum_sum[3]_i_4_n_0\
    );
\checksum_sum[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \checksum_sum_reg_n_0_[1]\,
      I1 => rx_byte(1),
      O => \checksum_sum[3]_i_5_n_0\
    );
\checksum_sum[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \checksum_sum_reg_n_0_[0]\,
      I1 => rx_byte(0),
      O => \checksum_sum[3]_i_6_n_0\
    );
\checksum_sum[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in42(4),
      O => checksum_sum(4)
    );
\checksum_sum[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in42(5),
      O => checksum_sum(5)
    );
\checksum_sum[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in42(6),
      O => checksum_sum(6)
    );
\checksum_sum[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B000000"
    )
        port map (
      I0 => \payload_index[5]_i_4_n_0\,
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => rx_valid,
      I4 => \state__0\(1),
      O => \checksum_sum[7]_i_1_n_0\
    );
\checksum_sum[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => in42(7),
      O => checksum_sum(7)
    );
\checksum_sum[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rx_byte(7),
      I1 => \checksum_sum_reg_n_0_[7]\,
      O => \checksum_sum[7]_i_4_n_0\
    );
\checksum_sum[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rx_byte(6),
      I1 => \checksum_sum_reg_n_0_[6]\,
      O => \checksum_sum[7]_i_5_n_0\
    );
\checksum_sum[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \checksum_sum_reg_n_0_[5]\,
      I1 => rx_byte(5),
      O => \checksum_sum[7]_i_6_n_0\
    );
\checksum_sum[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \checksum_sum_reg_n_0_[4]\,
      I1 => rx_byte(4),
      O => \checksum_sum[7]_i_7_n_0\
    );
\checksum_sum_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \checksum_sum[7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => checksum_sum(0),
      Q => \checksum_sum_reg_n_0_[0]\
    );
\checksum_sum_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \checksum_sum[7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => checksum_sum(1),
      Q => \checksum_sum_reg_n_0_[1]\
    );
\checksum_sum_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \checksum_sum[7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => checksum_sum(2),
      Q => \checksum_sum_reg_n_0_[2]\
    );
\checksum_sum_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \checksum_sum[7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => checksum_sum(3),
      Q => \checksum_sum_reg_n_0_[3]\
    );
\checksum_sum_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \checksum_sum_reg[3]_i_2_n_0\,
      CO(2) => \checksum_sum_reg[3]_i_2_n_1\,
      CO(1) => \checksum_sum_reg[3]_i_2_n_2\,
      CO(0) => \checksum_sum_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \checksum_sum_reg_n_0_[3]\,
      DI(2) => \checksum_sum_reg_n_0_[2]\,
      DI(1) => \checksum_sum_reg_n_0_[1]\,
      DI(0) => \checksum_sum_reg_n_0_[0]\,
      O(3 downto 0) => in42(3 downto 0),
      S(3) => \checksum_sum[3]_i_3_n_0\,
      S(2) => \checksum_sum[3]_i_4_n_0\,
      S(1) => \checksum_sum[3]_i_5_n_0\,
      S(0) => \checksum_sum[3]_i_6_n_0\
    );
\checksum_sum_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \checksum_sum[7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => checksum_sum(4),
      Q => \checksum_sum_reg_n_0_[4]\
    );
\checksum_sum_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \checksum_sum[7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => checksum_sum(5),
      Q => \checksum_sum_reg_n_0_[5]\
    );
\checksum_sum_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \checksum_sum[7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => checksum_sum(6),
      Q => \checksum_sum_reg_n_0_[6]\
    );
\checksum_sum_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \checksum_sum[7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => checksum_sum(7),
      Q => \checksum_sum_reg_n_0_[7]\
    );
\checksum_sum_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \checksum_sum_reg[3]_i_2_n_0\,
      CO(3) => \NLW_checksum_sum_reg[7]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \checksum_sum_reg[7]_i_3_n_1\,
      CO(1) => \checksum_sum_reg[7]_i_3_n_2\,
      CO(0) => \checksum_sum_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \checksum_sum_reg_n_0_[6]\,
      DI(1) => \checksum_sum_reg_n_0_[5]\,
      DI(0) => \checksum_sum_reg_n_0_[4]\,
      O(3 downto 0) => in42(7 downto 4),
      S(3) => \checksum_sum[7]_i_4_n_0\,
      S(2) => \checksum_sum[7]_i_5_n_0\,
      S(1) => \checksum_sum[7]_i_6_n_0\,
      S(0) => \checksum_sum[7]_i_7_n_0\
    );
\delta[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \rawdata[15]_i_3_n_0\,
      I1 => \delta[23]_i_2_n_0\,
      I2 => \delta[23]_i_3_n_0\,
      I3 => \delta[23]_i_4_n_0\,
      I4 => \delta[23]_i_5_n_0\,
      I5 => rawdata0,
      O => big_packet_valid0_out
    );
\delta[23]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \payload_reg_n_0_[2][6]\,
      I1 => \payload_reg_n_0_[2][7]\,
      I2 => \payload_reg_n_0_[2][5]\,
      I3 => \payload_reg_n_0_[2][4]\,
      O => \delta[23]_i_10_n_0\
    );
\delta[23]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \payload_reg_n_0_[2][1]\,
      I1 => \payload_reg_n_0_[2][0]\,
      I2 => \payload_reg_n_0_[2][3]\,
      I3 => \payload_reg_n_0_[2][2]\,
      O => \delta[23]_i_11_n_0\
    );
\delta[23]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \payload_reg_n_0_[0][3]\,
      I1 => \payload_reg_n_0_[0][2]\,
      I2 => \payload_reg_n_0_[0][0]\,
      I3 => \payload_reg_n_0_[0][1]\,
      O => \delta[23]_i_12_n_0\
    );
\delta[23]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \payload_reg_n_0_[0][4]\,
      I1 => \payload_reg_n_0_[0][5]\,
      O => \delta[23]_i_13_n_0\
    );
\delta[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => \delta[23]_i_6_n_0\,
      I1 => \payload_reg_n_0_[30][0]\,
      I2 => \payload_reg_n_0_[30][2]\,
      I3 => \payload_reg_n_0_[30][1]\,
      I4 => \payload_reg_n_0_[30][3]\,
      I5 => \delta[23]_i_7_n_0\,
      O => \delta[23]_i_2_n_0\
    );
\delta[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \payload_reg_n_0_[3][0]\,
      I1 => \payload_reg_n_0_[3][2]\,
      I2 => \payload_reg_n_0_[3][4]\,
      I3 => \payload_reg_n_0_[3][3]\,
      I4 => \delta[23]_i_8_n_0\,
      O => \delta[23]_i_3_n_0\
    );
\delta[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \payload_reg_n_0_[28][3]\,
      I1 => \payload_reg_n_0_[28][0]\,
      I2 => \payload_reg_n_0_[28][1]\,
      I3 => \payload_reg_n_0_[28][2]\,
      I4 => \delta[23]_i_9_n_0\,
      O => \delta[23]_i_4_n_0\
    );
\delta[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \delta[23]_i_10_n_0\,
      I1 => \delta[23]_i_11_n_0\,
      I2 => \delta[23]_i_12_n_0\,
      I3 => \payload_reg_n_0_[0][7]\,
      I4 => \payload_reg_n_0_[0][6]\,
      I5 => \delta[23]_i_13_n_0\,
      O => \delta[23]_i_5_n_0\
    );
\delta[23]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \payload_reg_n_0_[30][7]\,
      I1 => \payload_reg_n_0_[30][6]\,
      I2 => \payload_length_reg_n_0_[4]\,
      I3 => \payload_length_reg_n_0_[3]\,
      O => \delta[23]_i_6_n_0\
    );
\delta[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \payload_reg_n_0_[30][4]\,
      I1 => \payload_reg_n_0_[30][5]\,
      I2 => \payload_length_reg_n_0_[5]\,
      I3 => \payload_length_reg_n_0_[1]\,
      I4 => \payload_length_reg_n_0_[0]\,
      I5 => \payload_length_reg_n_0_[2]\,
      O => \delta[23]_i_7_n_0\
    );
\delta[23]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \payload_reg_n_0_[3][1]\,
      I1 => \payload_reg_n_0_[3][5]\,
      I2 => \payload_reg_n_0_[3][7]\,
      I3 => \payload_reg_n_0_[3][6]\,
      O => \delta[23]_i_8_n_0\
    );
\delta[23]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \payload_reg_n_0_[28][4]\,
      I1 => \payload_reg_n_0_[28][5]\,
      I2 => \payload_reg_n_0_[28][7]\,
      I3 => \payload_reg_n_0_[28][6]\,
      O => \delta[23]_i_9_n_0\
    );
\delta_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[6]\(0),
      Q => delta(0)
    );
\delta_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[5]\(2),
      Q => delta(10)
    );
\delta_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[5]\(3),
      Q => delta(11)
    );
\delta_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[5]\(4),
      Q => delta(12)
    );
\delta_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[5]\(5),
      Q => delta(13)
    );
\delta_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[5]\(6),
      Q => delta(14)
    );
\delta_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[5]\(7),
      Q => delta(15)
    );
\delta_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[4]\(0),
      Q => delta(16)
    );
\delta_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[4]\(1),
      Q => delta(17)
    );
\delta_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[4]\(2),
      Q => delta(18)
    );
\delta_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[4]\(3),
      Q => delta(19)
    );
\delta_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[6]\(1),
      Q => delta(1)
    );
\delta_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[4]\(4),
      Q => delta(20)
    );
\delta_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[4]\(5),
      Q => delta(21)
    );
\delta_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[4]\(6),
      Q => delta(22)
    );
\delta_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[4]\(7),
      Q => delta(23)
    );
\delta_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[6]\(2),
      Q => delta(2)
    );
\delta_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[6]\(3),
      Q => delta(3)
    );
\delta_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[6]\(4),
      Q => delta(4)
    );
\delta_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[6]\(5),
      Q => delta(5)
    );
\delta_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[6]\(6),
      Q => delta(6)
    );
\delta_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[6]\(7),
      Q => delta(7)
    );
\delta_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[5]\(0),
      Q => delta(8)
    );
\delta_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[5]\(1),
      Q => delta(9)
    );
\high_alpha_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[15]\(0),
      Q => high_alpha(0)
    );
\high_alpha_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[14]\(2),
      Q => high_alpha(10)
    );
\high_alpha_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[14]\(3),
      Q => high_alpha(11)
    );
\high_alpha_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[14]\(4),
      Q => high_alpha(12)
    );
\high_alpha_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[14]\(5),
      Q => high_alpha(13)
    );
\high_alpha_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[14]\(6),
      Q => high_alpha(14)
    );
\high_alpha_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[14]\(7),
      Q => high_alpha(15)
    );
\high_alpha_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[13]\(0),
      Q => high_alpha(16)
    );
\high_alpha_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[13]\(1),
      Q => high_alpha(17)
    );
\high_alpha_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[13]\(2),
      Q => high_alpha(18)
    );
\high_alpha_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[13]\(3),
      Q => high_alpha(19)
    );
\high_alpha_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[15]\(1),
      Q => high_alpha(1)
    );
\high_alpha_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[13]\(4),
      Q => high_alpha(20)
    );
\high_alpha_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[13]\(5),
      Q => high_alpha(21)
    );
\high_alpha_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[13]\(6),
      Q => high_alpha(22)
    );
\high_alpha_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[13]\(7),
      Q => high_alpha(23)
    );
\high_alpha_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[15]\(2),
      Q => high_alpha(2)
    );
\high_alpha_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[15]\(3),
      Q => high_alpha(3)
    );
\high_alpha_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[15]\(4),
      Q => high_alpha(4)
    );
\high_alpha_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[15]\(5),
      Q => high_alpha(5)
    );
\high_alpha_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[15]\(6),
      Q => high_alpha(6)
    );
\high_alpha_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[15]\(7),
      Q => high_alpha(7)
    );
\high_alpha_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[14]\(0),
      Q => high_alpha(8)
    );
\high_alpha_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[14]\(1),
      Q => high_alpha(9)
    );
\high_beta_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[21]\(0),
      Q => high_beta(0)
    );
\high_beta_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[20]\(2),
      Q => high_beta(10)
    );
\high_beta_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[20]\(3),
      Q => high_beta(11)
    );
\high_beta_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[20]\(4),
      Q => high_beta(12)
    );
\high_beta_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[20]\(5),
      Q => high_beta(13)
    );
\high_beta_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[20]\(6),
      Q => high_beta(14)
    );
\high_beta_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[20]\(7),
      Q => high_beta(15)
    );
\high_beta_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[19]\(0),
      Q => high_beta(16)
    );
\high_beta_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[19]\(1),
      Q => high_beta(17)
    );
\high_beta_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[19]\(2),
      Q => high_beta(18)
    );
\high_beta_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[19]\(3),
      Q => high_beta(19)
    );
\high_beta_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[21]\(1),
      Q => high_beta(1)
    );
\high_beta_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[19]\(4),
      Q => high_beta(20)
    );
\high_beta_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[19]\(5),
      Q => high_beta(21)
    );
\high_beta_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[19]\(6),
      Q => high_beta(22)
    );
\high_beta_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[19]\(7),
      Q => high_beta(23)
    );
\high_beta_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[21]\(2),
      Q => high_beta(2)
    );
\high_beta_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[21]\(3),
      Q => high_beta(3)
    );
\high_beta_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[21]\(4),
      Q => high_beta(4)
    );
\high_beta_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[21]\(5),
      Q => high_beta(5)
    );
\high_beta_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[21]\(6),
      Q => high_beta(6)
    );
\high_beta_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[21]\(7),
      Q => high_beta(7)
    );
\high_beta_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[20]\(0),
      Q => high_beta(8)
    );
\high_beta_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[20]\(1),
      Q => high_beta(9)
    );
\low_alpha_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[12]\(0),
      Q => low_alpha(0)
    );
\low_alpha_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[11]\(2),
      Q => low_alpha(10)
    );
\low_alpha_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[11]\(3),
      Q => low_alpha(11)
    );
\low_alpha_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[11]\(4),
      Q => low_alpha(12)
    );
\low_alpha_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[11]\(5),
      Q => low_alpha(13)
    );
\low_alpha_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[11]\(6),
      Q => low_alpha(14)
    );
\low_alpha_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[11]\(7),
      Q => low_alpha(15)
    );
\low_alpha_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[10]\(0),
      Q => low_alpha(16)
    );
\low_alpha_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[10]\(1),
      Q => low_alpha(17)
    );
\low_alpha_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[10]\(2),
      Q => low_alpha(18)
    );
\low_alpha_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[10]\(3),
      Q => low_alpha(19)
    );
\low_alpha_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[12]\(1),
      Q => low_alpha(1)
    );
\low_alpha_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[10]\(4),
      Q => low_alpha(20)
    );
\low_alpha_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[10]\(5),
      Q => low_alpha(21)
    );
\low_alpha_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[10]\(6),
      Q => low_alpha(22)
    );
\low_alpha_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[10]\(7),
      Q => low_alpha(23)
    );
\low_alpha_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[12]\(2),
      Q => low_alpha(2)
    );
\low_alpha_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[12]\(3),
      Q => low_alpha(3)
    );
\low_alpha_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[12]\(4),
      Q => low_alpha(4)
    );
\low_alpha_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[12]\(5),
      Q => low_alpha(5)
    );
\low_alpha_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[12]\(6),
      Q => low_alpha(6)
    );
\low_alpha_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[12]\(7),
      Q => low_alpha(7)
    );
\low_alpha_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[11]\(0),
      Q => low_alpha(8)
    );
\low_alpha_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[11]\(1),
      Q => low_alpha(9)
    );
\low_beta_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[18]\(0),
      Q => low_beta(0)
    );
\low_beta_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[17]\(2),
      Q => low_beta(10)
    );
\low_beta_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[17]\(3),
      Q => low_beta(11)
    );
\low_beta_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[17]\(4),
      Q => low_beta(12)
    );
\low_beta_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[17]\(5),
      Q => low_beta(13)
    );
\low_beta_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[17]\(6),
      Q => low_beta(14)
    );
\low_beta_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[17]\(7),
      Q => low_beta(15)
    );
\low_beta_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[16]\(0),
      Q => low_beta(16)
    );
\low_beta_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[16]\(1),
      Q => low_beta(17)
    );
\low_beta_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[16]\(2),
      Q => low_beta(18)
    );
\low_beta_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[16]\(3),
      Q => low_beta(19)
    );
\low_beta_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[18]\(1),
      Q => low_beta(1)
    );
\low_beta_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[16]\(4),
      Q => low_beta(20)
    );
\low_beta_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[16]\(5),
      Q => low_beta(21)
    );
\low_beta_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[16]\(6),
      Q => low_beta(22)
    );
\low_beta_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[16]\(7),
      Q => low_beta(23)
    );
\low_beta_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[18]\(2),
      Q => low_beta(2)
    );
\low_beta_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[18]\(3),
      Q => low_beta(3)
    );
\low_beta_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[18]\(4),
      Q => low_beta(4)
    );
\low_beta_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[18]\(5),
      Q => low_beta(5)
    );
\low_beta_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[18]\(6),
      Q => low_beta(6)
    );
\low_beta_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[18]\(7),
      Q => low_beta(7)
    );
\low_beta_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[17]\(0),
      Q => low_beta(8)
    );
\low_beta_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[17]\(1),
      Q => low_beta(9)
    );
\low_gamma_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[24]\(0),
      Q => low_gamma(0)
    );
\low_gamma_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[23]\(2),
      Q => low_gamma(10)
    );
\low_gamma_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[23]\(3),
      Q => low_gamma(11)
    );
\low_gamma_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[23]\(4),
      Q => low_gamma(12)
    );
\low_gamma_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[23]\(5),
      Q => low_gamma(13)
    );
\low_gamma_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[23]\(6),
      Q => low_gamma(14)
    );
\low_gamma_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[23]\(7),
      Q => low_gamma(15)
    );
\low_gamma_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[22]\(0),
      Q => low_gamma(16)
    );
\low_gamma_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[22]\(1),
      Q => low_gamma(17)
    );
\low_gamma_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[22]\(2),
      Q => low_gamma(18)
    );
\low_gamma_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[22]\(3),
      Q => low_gamma(19)
    );
\low_gamma_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[24]\(1),
      Q => low_gamma(1)
    );
\low_gamma_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[22]\(4),
      Q => low_gamma(20)
    );
\low_gamma_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[22]\(5),
      Q => low_gamma(21)
    );
\low_gamma_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[22]\(6),
      Q => low_gamma(22)
    );
\low_gamma_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[22]\(7),
      Q => low_gamma(23)
    );
\low_gamma_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[24]\(2),
      Q => low_gamma(2)
    );
\low_gamma_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[24]\(3),
      Q => low_gamma(3)
    );
\low_gamma_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[24]\(4),
      Q => low_gamma(4)
    );
\low_gamma_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[24]\(5),
      Q => low_gamma(5)
    );
\low_gamma_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[24]\(6),
      Q => low_gamma(6)
    );
\low_gamma_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[24]\(7),
      Q => low_gamma(7)
    );
\low_gamma_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[23]\(0),
      Q => low_gamma(8)
    );
\low_gamma_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[23]\(1),
      Q => low_gamma(9)
    );
\meditation_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[31]\(0),
      Q => meditation(0)
    );
\meditation_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[31]\(1),
      Q => meditation(1)
    );
\meditation_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[31]\(2),
      Q => meditation(2)
    );
\meditation_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[31]\(3),
      Q => meditation(3)
    );
\meditation_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[31]\(4),
      Q => meditation(4)
    );
\meditation_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[31]\(5),
      Q => meditation(5)
    );
\meditation_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[31]\(6),
      Q => meditation(6)
    );
\meditation_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[31]\(7),
      Q => meditation(7)
    );
\middle_gamma_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[27]\(0),
      Q => middle_gamma(0)
    );
\middle_gamma_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[26]\(2),
      Q => middle_gamma(10)
    );
\middle_gamma_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[26]\(3),
      Q => middle_gamma(11)
    );
\middle_gamma_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[26]\(4),
      Q => middle_gamma(12)
    );
\middle_gamma_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[26]\(5),
      Q => middle_gamma(13)
    );
\middle_gamma_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[26]\(6),
      Q => middle_gamma(14)
    );
\middle_gamma_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[26]\(7),
      Q => middle_gamma(15)
    );
\middle_gamma_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[25]\(0),
      Q => middle_gamma(16)
    );
\middle_gamma_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[25]\(1),
      Q => middle_gamma(17)
    );
\middle_gamma_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[25]\(2),
      Q => middle_gamma(18)
    );
\middle_gamma_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[25]\(3),
      Q => middle_gamma(19)
    );
\middle_gamma_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[27]\(1),
      Q => middle_gamma(1)
    );
\middle_gamma_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[25]\(4),
      Q => middle_gamma(20)
    );
\middle_gamma_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[25]\(5),
      Q => middle_gamma(21)
    );
\middle_gamma_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[25]\(6),
      Q => middle_gamma(22)
    );
\middle_gamma_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[25]\(7),
      Q => middle_gamma(23)
    );
\middle_gamma_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[27]\(2),
      Q => middle_gamma(2)
    );
\middle_gamma_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[27]\(3),
      Q => middle_gamma(3)
    );
\middle_gamma_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[27]\(4),
      Q => middle_gamma(4)
    );
\middle_gamma_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[27]\(5),
      Q => middle_gamma(5)
    );
\middle_gamma_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[27]\(6),
      Q => middle_gamma(6)
    );
\middle_gamma_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[27]\(7),
      Q => middle_gamma(7)
    );
\middle_gamma_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[26]\(0),
      Q => middle_gamma(8)
    );
\middle_gamma_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[26]\(1),
      Q => middle_gamma(9)
    );
\payload[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[0][7]_i_4_n_0\,
      I5 => \payload[0][7]_i_5_n_0\,
      O => \payload[0][7]_i_1_n_0\
    );
\payload[0][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_valid,
      I1 => \state__0\(2),
      O => \payload[0][7]_i_2_n_0\
    );
\payload[0][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \payload_index_reg_n_0_[5]\,
      O => \payload[0][7]_i_3_n_0\
    );
\payload[0][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \payload_index_reg_n_0_[3]\,
      I1 => \payload_index_reg_n_0_[4]\,
      O => \payload[0][7]_i_4_n_0\
    );
\payload[0][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \payload_index_reg_n_0_[0]\,
      I1 => \payload_index_reg_n_0_[1]\,
      O => \payload[0][7]_i_5_n_0\
    );
\payload[10][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[9][7]_i_2_n_0\,
      I5 => \payload[2][7]_i_2_n_0\,
      O => \payload[10][7]_i_1_n_0\
    );
\payload[11][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[9][7]_i_2_n_0\,
      I5 => \payload_index[5]_i_5_n_0\,
      O => \payload[11][7]_i_1_n_0\
    );
\payload[12][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[9][7]_i_2_n_0\,
      I5 => \payload[0][7]_i_5_n_0\,
      O => \payload[12][7]_i_1_n_0\
    );
\payload[13][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[9][7]_i_2_n_0\,
      I5 => \payload[1][7]_i_2_n_0\,
      O => \payload[13][7]_i_1_n_0\
    );
\payload[14][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[9][7]_i_2_n_0\,
      I5 => \payload[2][7]_i_2_n_0\,
      O => \payload[14][7]_i_1_n_0\
    );
\payload[15][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[9][7]_i_2_n_0\,
      I5 => \payload_index[5]_i_5_n_0\,
      O => \payload[15][7]_i_1_n_0\
    );
\payload[16][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[18][7]_i_2_n_0\,
      I5 => \payload[0][7]_i_5_n_0\,
      O => \payload[16][7]_i_1_n_0\
    );
\payload[17][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[18][7]_i_2_n_0\,
      I5 => \payload[1][7]_i_2_n_0\,
      O => \payload[17][7]_i_1_n_0\
    );
\payload[18][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[18][7]_i_2_n_0\,
      I5 => \payload[2][7]_i_2_n_0\,
      O => \payload[18][7]_i_1_n_0\
    );
\payload[18][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \payload_index_reg_n_0_[4]\,
      I1 => \payload_index_reg_n_0_[3]\,
      O => \payload[18][7]_i_2_n_0\
    );
\payload[19][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[18][7]_i_2_n_0\,
      I5 => \payload_index[5]_i_5_n_0\,
      O => \payload[19][7]_i_1_n_0\
    );
\payload[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[0][7]_i_4_n_0\,
      I5 => \payload[1][7]_i_2_n_0\,
      O => \payload[1][7]_i_1_n_0\
    );
\payload[1][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \payload_index_reg_n_0_[0]\,
      I1 => \payload_index_reg_n_0_[1]\,
      O => \payload[1][7]_i_2_n_0\
    );
\payload[20][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[18][7]_i_2_n_0\,
      I5 => \payload[0][7]_i_5_n_0\,
      O => \payload[20][7]_i_1_n_0\
    );
\payload[21][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[18][7]_i_2_n_0\,
      I5 => \payload[1][7]_i_2_n_0\,
      O => \payload[21][7]_i_1_n_0\
    );
\payload[22][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[18][7]_i_2_n_0\,
      I5 => \payload[2][7]_i_2_n_0\,
      O => \payload[22][7]_i_1_n_0\
    );
\payload[23][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[18][7]_i_2_n_0\,
      I5 => \payload_index[5]_i_5_n_0\,
      O => \payload[23][7]_i_1_n_0\
    );
\payload[24][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[28][7]_i_2_n_0\,
      I5 => \payload[0][7]_i_5_n_0\,
      O => \payload[24][7]_i_1_n_0\
    );
\payload[25][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[28][7]_i_2_n_0\,
      I5 => \payload[1][7]_i_2_n_0\,
      O => \payload[25][7]_i_1_n_0\
    );
\payload[26][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[28][7]_i_2_n_0\,
      I5 => \payload[2][7]_i_2_n_0\,
      O => \payload[26][7]_i_1_n_0\
    );
\payload[27][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[28][7]_i_2_n_0\,
      I5 => \payload_index[5]_i_5_n_0\,
      O => \payload[27][7]_i_1_n_0\
    );
\payload[28][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[28][7]_i_2_n_0\,
      I5 => \payload[0][7]_i_5_n_0\,
      O => \payload[28][7]_i_1_n_0\
    );
\payload[28][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \payload_index_reg_n_0_[3]\,
      I1 => \payload_index_reg_n_0_[4]\,
      O => \payload[28][7]_i_2_n_0\
    );
\payload[29][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[28][7]_i_2_n_0\,
      I5 => \payload[1][7]_i_2_n_0\,
      O => \payload[29][7]_i_1_n_0\
    );
\payload[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[0][7]_i_4_n_0\,
      I5 => \payload[2][7]_i_2_n_0\,
      O => \payload[2][7]_i_1_n_0\
    );
\payload[2][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \payload_index_reg_n_0_[1]\,
      I1 => \payload_index_reg_n_0_[0]\,
      O => \payload[2][7]_i_2_n_0\
    );
\payload[30][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[28][7]_i_2_n_0\,
      I5 => \payload[2][7]_i_2_n_0\,
      O => \payload[30][7]_i_1_n_0\
    );
\payload[31][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[28][7]_i_2_n_0\,
      I5 => \payload_index[5]_i_5_n_0\,
      O => \payload[31][7]_i_1_n_0\
    );
\payload[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[0][7]_i_4_n_0\,
      I5 => \payload_index[5]_i_5_n_0\,
      O => \payload[3][7]_i_1_n_0\
    );
\payload[4][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[0][7]_i_4_n_0\,
      I5 => \payload[0][7]_i_5_n_0\,
      O => \payload[4][7]_i_1_n_0\
    );
\payload[5][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[0][7]_i_4_n_0\,
      I5 => \payload[1][7]_i_2_n_0\,
      O => \payload[5][7]_i_1_n_0\
    );
\payload[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[0][7]_i_4_n_0\,
      I5 => \payload[2][7]_i_2_n_0\,
      O => \payload[6][7]_i_1_n_0\
    );
\payload[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[0][7]_i_4_n_0\,
      I5 => \payload_index[5]_i_5_n_0\,
      O => \payload[7][7]_i_1_n_0\
    );
\payload[8][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[9][7]_i_2_n_0\,
      I5 => \payload[0][7]_i_5_n_0\,
      O => \payload[8][7]_i_1_n_0\
    );
\payload[9][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \payload[0][7]_i_2_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \payload[0][7]_i_3_n_0\,
      I3 => \payload_index_reg_n_0_[2]\,
      I4 => \payload[9][7]_i_2_n_0\,
      I5 => \payload[1][7]_i_2_n_0\,
      O => \payload[9][7]_i_1_n_0\
    );
\payload[9][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \payload_index_reg_n_0_[3]\,
      I1 => \payload_index_reg_n_0_[4]\,
      O => \payload[9][7]_i_2_n_0\
    );
\payload_index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \payload_index_reg_n_0_[0]\,
      O => payload_index(0)
    );
\payload_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \payload_index_reg_n_0_[0]\,
      I2 => \payload_index_reg_n_0_[1]\,
      O => payload_index(1)
    );
\payload_index[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \payload_index_reg_n_0_[1]\,
      I2 => \payload_index_reg_n_0_[0]\,
      I3 => \payload_index_reg_n_0_[2]\,
      O => payload_index(2)
    );
\payload_index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \payload_index_reg_n_0_[1]\,
      I1 => \payload_index_reg_n_0_[0]\,
      I2 => \payload_index_reg_n_0_[2]\,
      I3 => \state__0\(0),
      I4 => \payload_index_reg_n_0_[3]\,
      O => payload_index(3)
    );
\payload_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \payload_index_reg_n_0_[3]\,
      I1 => \payload_index_reg_n_0_[2]\,
      I2 => \payload_index_reg_n_0_[0]\,
      I3 => \payload_index_reg_n_0_[1]\,
      I4 => \payload_index[5]_i_6_n_0\,
      I5 => \payload_index_reg_n_0_[4]\,
      O => payload_index(4)
    );
\payload_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004F000000000000"
    )
        port map (
      I0 => \payload_index[5]_i_3_n_0\,
      I1 => \payload_index[5]_i_4_n_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => rx_valid,
      I5 => \state__0\(1),
      O => \payload_index[5]_i_1_n_0\
    );
\payload_index[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF000040000000"
    )
        port map (
      I0 => \payload_index[5]_i_5_n_0\,
      I1 => \payload_index_reg_n_0_[2]\,
      I2 => \payload_index_reg_n_0_[3]\,
      I3 => \payload_index_reg_n_0_[4]\,
      I4 => \payload_index[5]_i_6_n_0\,
      I5 => \payload_index_reg_n_0_[5]\,
      O => payload_index(5)
    );
\payload_index[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_17_n_0\,
      I1 => \FSM_sequential_state[2]_i_16_n_0\,
      I2 => \FSM_sequential_state[2]_i_15_n_0\,
      I3 => \payload_index_reg_n_0_[5]\,
      I4 => state1(5),
      O => \payload_index[5]_i_3_n_0\
    );
\payload_index[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_12_n_0\,
      I1 => \FSM_sequential_state[2]_i_11_n_0\,
      I2 => \FSM_sequential_state[2]_i_10_n_0\,
      I3 => \FSM_sequential_state[2]_i_9_n_0\,
      I4 => \FSM_sequential_state[2]_i_8_n_0\,
      O => \payload_index[5]_i_4_n_0\
    );
\payload_index[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \payload_index_reg_n_0_[0]\,
      I1 => \payload_index_reg_n_0_[1]\,
      O => \payload_index[5]_i_5_n_0\
    );
\payload_index[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      O => \payload_index[5]_i_6_n_0\
    );
\payload_index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_index[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => payload_index(0),
      Q => \payload_index_reg_n_0_[0]\
    );
\payload_index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_index[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => payload_index(1),
      Q => \payload_index_reg_n_0_[1]\
    );
\payload_index_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_index[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => payload_index(2),
      Q => \payload_index_reg_n_0_[2]\
    );
\payload_index_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_index[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => payload_index(3),
      Q => \payload_index_reg_n_0_[3]\
    );
\payload_index_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_index[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => payload_index(4),
      Q => \payload_index_reg_n_0_[4]\
    );
\payload_index_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_index[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => payload_index(5),
      Q => \payload_index_reg_n_0_[5]\
    );
\payload_length[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => rx_valid,
      I3 => \state__0\(1),
      I4 => p_1_in,
      O => \payload_length[5]_i_1_n_0\
    );
\payload_length[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01100000"
    )
        port map (
      I0 => rx_byte(6),
      I1 => rx_byte(7),
      I2 => rx_byte(5),
      I3 => rx_byte(2),
      I4 => \FSM_sequential_state[1]_i_4_n_0\,
      O => p_1_in
    );
\payload_length_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_length[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_length_reg_n_0_[0]\
    );
\payload_length_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_length[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_length_reg_n_0_[1]\
    );
\payload_length_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_length[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_length_reg_n_0_[2]\
    );
\payload_length_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_length[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_length_reg_n_0_[3]\
    );
\payload_length_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_length[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_length_reg_n_0_[4]\
    );
\payload_length_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload_length[5]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_length_reg_n_0_[5]\
    );
\payload_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[0][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg_n_0_[0][0]\
    );
\payload_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[0][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg_n_0_[0][1]\
    );
\payload_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[0][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg_n_0_[0][2]\
    );
\payload_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[0][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg_n_0_[0][3]\
    );
\payload_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[0][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg_n_0_[0][4]\
    );
\payload_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[0][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg_n_0_[0][5]\
    );
\payload_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[0][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg_n_0_[0][6]\
    );
\payload_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[0][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg_n_0_[0][7]\
    );
\payload_reg[10][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[10][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[10]\(0)
    );
\payload_reg[10][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[10][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[10]\(1)
    );
\payload_reg[10][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[10][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[10]\(2)
    );
\payload_reg[10][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[10][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[10]\(3)
    );
\payload_reg[10][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[10][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[10]\(4)
    );
\payload_reg[10][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[10][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[10]\(5)
    );
\payload_reg[10][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[10][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[10]\(6)
    );
\payload_reg[10][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[10][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[10]\(7)
    );
\payload_reg[11][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[11][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[11]\(0)
    );
\payload_reg[11][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[11][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[11]\(1)
    );
\payload_reg[11][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[11][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[11]\(2)
    );
\payload_reg[11][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[11][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[11]\(3)
    );
\payload_reg[11][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[11][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[11]\(4)
    );
\payload_reg[11][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[11][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[11]\(5)
    );
\payload_reg[11][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[11][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[11]\(6)
    );
\payload_reg[11][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[11][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[11]\(7)
    );
\payload_reg[12][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[12][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[12]\(0)
    );
\payload_reg[12][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[12][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[12]\(1)
    );
\payload_reg[12][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[12][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[12]\(2)
    );
\payload_reg[12][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[12][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[12]\(3)
    );
\payload_reg[12][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[12][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[12]\(4)
    );
\payload_reg[12][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[12][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[12]\(5)
    );
\payload_reg[12][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[12][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[12]\(6)
    );
\payload_reg[12][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[12][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[12]\(7)
    );
\payload_reg[13][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[13][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[13]\(0)
    );
\payload_reg[13][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[13][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[13]\(1)
    );
\payload_reg[13][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[13][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[13]\(2)
    );
\payload_reg[13][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[13][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[13]\(3)
    );
\payload_reg[13][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[13][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[13]\(4)
    );
\payload_reg[13][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[13][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[13]\(5)
    );
\payload_reg[13][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[13][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[13]\(6)
    );
\payload_reg[13][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[13][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[13]\(7)
    );
\payload_reg[14][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[14][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[14]\(0)
    );
\payload_reg[14][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[14][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[14]\(1)
    );
\payload_reg[14][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[14][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[14]\(2)
    );
\payload_reg[14][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[14][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[14]\(3)
    );
\payload_reg[14][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[14][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[14]\(4)
    );
\payload_reg[14][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[14][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[14]\(5)
    );
\payload_reg[14][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[14][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[14]\(6)
    );
\payload_reg[14][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[14][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[14]\(7)
    );
\payload_reg[15][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[15][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[15]\(0)
    );
\payload_reg[15][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[15][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[15]\(1)
    );
\payload_reg[15][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[15][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[15]\(2)
    );
\payload_reg[15][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[15][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[15]\(3)
    );
\payload_reg[15][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[15][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[15]\(4)
    );
\payload_reg[15][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[15][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[15]\(5)
    );
\payload_reg[15][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[15][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[15]\(6)
    );
\payload_reg[15][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[15][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[15]\(7)
    );
\payload_reg[16][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[16][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[16]\(0)
    );
\payload_reg[16][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[16][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[16]\(1)
    );
\payload_reg[16][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[16][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[16]\(2)
    );
\payload_reg[16][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[16][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[16]\(3)
    );
\payload_reg[16][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[16][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[16]\(4)
    );
\payload_reg[16][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[16][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[16]\(5)
    );
\payload_reg[16][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[16][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[16]\(6)
    );
\payload_reg[16][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[16][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[16]\(7)
    );
\payload_reg[17][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[17][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[17]\(0)
    );
\payload_reg[17][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[17][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[17]\(1)
    );
\payload_reg[17][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[17][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[17]\(2)
    );
\payload_reg[17][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[17][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[17]\(3)
    );
\payload_reg[17][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[17][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[17]\(4)
    );
\payload_reg[17][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[17][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[17]\(5)
    );
\payload_reg[17][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[17][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[17]\(6)
    );
\payload_reg[17][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[17][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[17]\(7)
    );
\payload_reg[18][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[18][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[18]\(0)
    );
\payload_reg[18][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[18][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[18]\(1)
    );
\payload_reg[18][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[18][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[18]\(2)
    );
\payload_reg[18][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[18][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[18]\(3)
    );
\payload_reg[18][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[18][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[18]\(4)
    );
\payload_reg[18][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[18][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[18]\(5)
    );
\payload_reg[18][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[18][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[18]\(6)
    );
\payload_reg[18][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[18][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[18]\(7)
    );
\payload_reg[19][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[19][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[19]\(0)
    );
\payload_reg[19][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[19][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[19]\(1)
    );
\payload_reg[19][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[19][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[19]\(2)
    );
\payload_reg[19][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[19][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[19]\(3)
    );
\payload_reg[19][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[19][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[19]\(4)
    );
\payload_reg[19][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[19][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[19]\(5)
    );
\payload_reg[19][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[19][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[19]\(6)
    );
\payload_reg[19][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[19][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[19]\(7)
    );
\payload_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[1][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg_n_0_[1][0]\
    );
\payload_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[1][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg_n_0_[1][1]\
    );
\payload_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[1][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg_n_0_[1][2]\
    );
\payload_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[1][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg_n_0_[1][3]\
    );
\payload_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[1][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg_n_0_[1][4]\
    );
\payload_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[1][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg_n_0_[1][5]\
    );
\payload_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[1][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg_n_0_[1][6]\
    );
\payload_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[1][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg_n_0_[1][7]\
    );
\payload_reg[20][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[20][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[20]\(0)
    );
\payload_reg[20][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[20][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[20]\(1)
    );
\payload_reg[20][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[20][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[20]\(2)
    );
\payload_reg[20][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[20][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[20]\(3)
    );
\payload_reg[20][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[20][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[20]\(4)
    );
\payload_reg[20][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[20][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[20]\(5)
    );
\payload_reg[20][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[20][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[20]\(6)
    );
\payload_reg[20][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[20][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[20]\(7)
    );
\payload_reg[21][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[21][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[21]\(0)
    );
\payload_reg[21][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[21][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[21]\(1)
    );
\payload_reg[21][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[21][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[21]\(2)
    );
\payload_reg[21][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[21][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[21]\(3)
    );
\payload_reg[21][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[21][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[21]\(4)
    );
\payload_reg[21][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[21][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[21]\(5)
    );
\payload_reg[21][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[21][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[21]\(6)
    );
\payload_reg[21][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[21][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[21]\(7)
    );
\payload_reg[22][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[22][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[22]\(0)
    );
\payload_reg[22][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[22][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[22]\(1)
    );
\payload_reg[22][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[22][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[22]\(2)
    );
\payload_reg[22][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[22][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[22]\(3)
    );
\payload_reg[22][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[22][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[22]\(4)
    );
\payload_reg[22][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[22][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[22]\(5)
    );
\payload_reg[22][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[22][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[22]\(6)
    );
\payload_reg[22][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[22][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[22]\(7)
    );
\payload_reg[23][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[23][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[23]\(0)
    );
\payload_reg[23][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[23][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[23]\(1)
    );
\payload_reg[23][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[23][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[23]\(2)
    );
\payload_reg[23][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[23][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[23]\(3)
    );
\payload_reg[23][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[23][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[23]\(4)
    );
\payload_reg[23][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[23][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[23]\(5)
    );
\payload_reg[23][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[23][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[23]\(6)
    );
\payload_reg[23][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[23][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[23]\(7)
    );
\payload_reg[24][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[24][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[24]\(0)
    );
\payload_reg[24][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[24][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[24]\(1)
    );
\payload_reg[24][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[24][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[24]\(2)
    );
\payload_reg[24][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[24][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[24]\(3)
    );
\payload_reg[24][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[24][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[24]\(4)
    );
\payload_reg[24][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[24][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[24]\(5)
    );
\payload_reg[24][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[24][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[24]\(6)
    );
\payload_reg[24][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[24][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[24]\(7)
    );
\payload_reg[25][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[25][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[25]\(0)
    );
\payload_reg[25][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[25][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[25]\(1)
    );
\payload_reg[25][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[25][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[25]\(2)
    );
\payload_reg[25][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[25][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[25]\(3)
    );
\payload_reg[25][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[25][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[25]\(4)
    );
\payload_reg[25][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[25][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[25]\(5)
    );
\payload_reg[25][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[25][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[25]\(6)
    );
\payload_reg[25][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[25][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[25]\(7)
    );
\payload_reg[26][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[26][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[26]\(0)
    );
\payload_reg[26][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[26][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[26]\(1)
    );
\payload_reg[26][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[26][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[26]\(2)
    );
\payload_reg[26][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[26][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[26]\(3)
    );
\payload_reg[26][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[26][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[26]\(4)
    );
\payload_reg[26][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[26][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[26]\(5)
    );
\payload_reg[26][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[26][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[26]\(6)
    );
\payload_reg[26][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[26][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[26]\(7)
    );
\payload_reg[27][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[27][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[27]\(0)
    );
\payload_reg[27][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[27][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[27]\(1)
    );
\payload_reg[27][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[27][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[27]\(2)
    );
\payload_reg[27][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[27][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[27]\(3)
    );
\payload_reg[27][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[27][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[27]\(4)
    );
\payload_reg[27][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[27][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[27]\(5)
    );
\payload_reg[27][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[27][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[27]\(6)
    );
\payload_reg[27][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[27][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[27]\(7)
    );
\payload_reg[28][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[28][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg_n_0_[28][0]\
    );
\payload_reg[28][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[28][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg_n_0_[28][1]\
    );
\payload_reg[28][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[28][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg_n_0_[28][2]\
    );
\payload_reg[28][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[28][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg_n_0_[28][3]\
    );
\payload_reg[28][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[28][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg_n_0_[28][4]\
    );
\payload_reg[28][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[28][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg_n_0_[28][5]\
    );
\payload_reg[28][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[28][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg_n_0_[28][6]\
    );
\payload_reg[28][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[28][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg_n_0_[28][7]\
    );
\payload_reg[29][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[29][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[29]\(0)
    );
\payload_reg[29][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[29][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[29]\(1)
    );
\payload_reg[29][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[29][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[29]\(2)
    );
\payload_reg[29][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[29][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[29]\(3)
    );
\payload_reg[29][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[29][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[29]\(4)
    );
\payload_reg[29][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[29][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[29]\(5)
    );
\payload_reg[29][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[29][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[29]\(6)
    );
\payload_reg[29][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[29][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[29]\(7)
    );
\payload_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[2][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg_n_0_[2][0]\
    );
\payload_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[2][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg_n_0_[2][1]\
    );
\payload_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[2][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg_n_0_[2][2]\
    );
\payload_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[2][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg_n_0_[2][3]\
    );
\payload_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[2][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg_n_0_[2][4]\
    );
\payload_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[2][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg_n_0_[2][5]\
    );
\payload_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[2][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg_n_0_[2][6]\
    );
\payload_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[2][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg_n_0_[2][7]\
    );
\payload_reg[30][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[30][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg_n_0_[30][0]\
    );
\payload_reg[30][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[30][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg_n_0_[30][1]\
    );
\payload_reg[30][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[30][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg_n_0_[30][2]\
    );
\payload_reg[30][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[30][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg_n_0_[30][3]\
    );
\payload_reg[30][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[30][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg_n_0_[30][4]\
    );
\payload_reg[30][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[30][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg_n_0_[30][5]\
    );
\payload_reg[30][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[30][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg_n_0_[30][6]\
    );
\payload_reg[30][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[30][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg_n_0_[30][7]\
    );
\payload_reg[31][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[31][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[31]\(0)
    );
\payload_reg[31][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[31][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[31]\(1)
    );
\payload_reg[31][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[31][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[31]\(2)
    );
\payload_reg[31][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[31][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[31]\(3)
    );
\payload_reg[31][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[31][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[31]\(4)
    );
\payload_reg[31][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[31][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[31]\(5)
    );
\payload_reg[31][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[31][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[31]\(6)
    );
\payload_reg[31][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[31][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[31]\(7)
    );
\payload_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[3][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg_n_0_[3][0]\
    );
\payload_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[3][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg_n_0_[3][1]\
    );
\payload_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[3][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg_n_0_[3][2]\
    );
\payload_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[3][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg_n_0_[3][3]\
    );
\payload_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[3][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg_n_0_[3][4]\
    );
\payload_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[3][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg_n_0_[3][5]\
    );
\payload_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[3][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg_n_0_[3][6]\
    );
\payload_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[3][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg_n_0_[3][7]\
    );
\payload_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[4][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[4]\(0)
    );
\payload_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[4][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[4]\(1)
    );
\payload_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[4][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[4]\(2)
    );
\payload_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[4][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[4]\(3)
    );
\payload_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[4][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[4]\(4)
    );
\payload_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[4][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[4]\(5)
    );
\payload_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[4][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[4]\(6)
    );
\payload_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[4][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[4]\(7)
    );
\payload_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[5][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[5]\(0)
    );
\payload_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[5][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[5]\(1)
    );
\payload_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[5][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[5]\(2)
    );
\payload_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[5][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[5]\(3)
    );
\payload_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[5][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[5]\(4)
    );
\payload_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[5][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[5]\(5)
    );
\payload_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[5][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[5]\(6)
    );
\payload_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[5][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[5]\(7)
    );
\payload_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[6][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[6]\(0)
    );
\payload_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[6][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[6]\(1)
    );
\payload_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[6][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[6]\(2)
    );
\payload_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[6][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[6]\(3)
    );
\payload_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[6][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[6]\(4)
    );
\payload_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[6][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[6]\(5)
    );
\payload_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[6][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[6]\(6)
    );
\payload_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[6][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[6]\(7)
    );
\payload_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[7][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[7]\(0)
    );
\payload_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[7][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[7]\(1)
    );
\payload_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[7][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[7]\(2)
    );
\payload_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[7][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[7]\(3)
    );
\payload_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[7][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[7]\(4)
    );
\payload_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[7][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[7]\(5)
    );
\payload_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[7][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[7]\(6)
    );
\payload_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[7][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[7]\(7)
    );
\payload_reg[8][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[8][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[8]\(0)
    );
\payload_reg[8][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[8][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[8]\(1)
    );
\payload_reg[8][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[8][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[8]\(2)
    );
\payload_reg[8][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[8][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[8]\(3)
    );
\payload_reg[8][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[8][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[8]\(4)
    );
\payload_reg[8][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[8][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[8]\(5)
    );
\payload_reg[8][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[8][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[8]\(6)
    );
\payload_reg[8][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[8][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[8]\(7)
    );
\payload_reg[9][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[9][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(0),
      Q => \payload_reg[9]\(0)
    );
\payload_reg[9][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[9][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(1),
      Q => \payload_reg[9]\(1)
    );
\payload_reg[9][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[9][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(2),
      Q => \payload_reg[9]\(2)
    );
\payload_reg[9][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[9][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(3),
      Q => \payload_reg[9]\(3)
    );
\payload_reg[9][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[9][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(4),
      Q => \payload_reg[9]\(4)
    );
\payload_reg[9][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[9][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(5),
      Q => \payload_reg[9]\(5)
    );
\payload_reg[9][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[9][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(6),
      Q => \payload_reg[9]\(6)
    );
\payload_reg[9][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \payload[9][7]_i_1_n_0\,
      CLR => \rawdata[15]_i_2_n_0\,
      D => rx_byte(7),
      Q => \payload_reg[9]\(7)
    );
\rawdata[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rawdata[15]_i_3_n_0\,
      I1 => rawdata0,
      O => rawdata_valid4_out
    );
\rawdata[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \payload_reg_n_0_[0][6]\,
      I1 => \payload_reg_n_0_[0][7]\,
      I2 => \payload_reg_n_0_[0][5]\,
      I3 => \payload_reg_n_0_[0][4]\,
      O => \rawdata[15]_i_10_n_0\
    );
\rawdata[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \payload_reg_n_0_[0][3]\,
      I1 => \payload_reg_n_0_[0][2]\,
      I2 => \payload_reg_n_0_[0][1]\,
      I3 => \payload_reg_n_0_[0][0]\,
      O => \rawdata[15]_i_11_n_0\
    );
\rawdata[15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \payload_reg_n_0_[1][0]\,
      I1 => \payload_reg_n_0_[1][1]\,
      I2 => \payload_reg_n_0_[1][3]\,
      I3 => \payload_reg_n_0_[1][2]\,
      O => \rawdata[15]_i_12_n_0\
    );
\rawdata[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \payload_reg_n_0_[1][7]\,
      I1 => \payload_reg_n_0_[1][6]\,
      I2 => \payload_reg_n_0_[1][5]\,
      I3 => \payload_reg_n_0_[1][4]\,
      O => \rawdata[15]_i_13_n_0\
    );
\rawdata[15]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \payload_length_reg_n_0_[4]\,
      I1 => \payload_length_reg_n_0_[5]\,
      I2 => \payload_length_reg_n_0_[2]\,
      I3 => \payload_length_reg_n_0_[3]\,
      I4 => \payload_length_reg_n_0_[1]\,
      I5 => \payload_length_reg_n_0_[0]\,
      O => rawdata29_in
    );
\rawdata[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \rawdata[15]_i_2_n_0\
    );
\rawdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \rawdata[15]_i_5_n_0\,
      I1 => \rawdata[15]_i_6_n_0\,
      I2 => \rawdata[15]_i_7_n_0\,
      I3 => \rawdata[15]_i_8_n_0\,
      I4 => \rawdata[15]_i_9_n_0\,
      O => \rawdata[15]_i_3_n_0\
    );
\rawdata[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \rawdata[15]_i_10_n_0\,
      I1 => \rawdata[15]_i_11_n_0\,
      I2 => \rawdata[15]_i_12_n_0\,
      I3 => \rawdata[15]_i_13_n_0\,
      I4 => rawdata29_in,
      O => rawdata0
    );
\rawdata[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => rx_byte(6),
      I1 => \checksum_sum_reg_n_0_[6]\,
      I2 => rx_byte(7),
      I3 => \checksum_sum_reg_n_0_[7]\,
      O => \rawdata[15]_i_5_n_0\
    );
\rawdata[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => rx_valid,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => \rawdata[15]_i_6_n_0\
    );
\rawdata[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \checksum_sum_reg_n_0_[5]\,
      I1 => rx_byte(5),
      I2 => \checksum_sum_reg_n_0_[2]\,
      I3 => rx_byte(2),
      O => \rawdata[15]_i_7_n_0\
    );
\rawdata[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \checksum_sum_reg_n_0_[1]\,
      I1 => rx_byte(1),
      I2 => \checksum_sum_reg_n_0_[0]\,
      I3 => rx_byte(0),
      O => \rawdata[15]_i_8_n_0\
    );
\rawdata[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \checksum_sum_reg_n_0_[4]\,
      I1 => rx_byte(4),
      I2 => \checksum_sum_reg_n_0_[3]\,
      I3 => rx_byte(3),
      O => \rawdata[15]_i_9_n_0\
    );
\rawdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[3][0]\,
      Q => rawdata(0)
    );
\rawdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[2][2]\,
      Q => rawdata(10)
    );
\rawdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[2][3]\,
      Q => rawdata(11)
    );
\rawdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[2][4]\,
      Q => rawdata(12)
    );
\rawdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[2][5]\,
      Q => rawdata(13)
    );
\rawdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[2][6]\,
      Q => rawdata(14)
    );
\rawdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[2][7]\,
      Q => rawdata(15)
    );
\rawdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[3][1]\,
      Q => rawdata(1)
    );
\rawdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[3][2]\,
      Q => rawdata(2)
    );
\rawdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[3][3]\,
      Q => rawdata(3)
    );
\rawdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[3][4]\,
      Q => rawdata(4)
    );
\rawdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[3][5]\,
      Q => rawdata(5)
    );
\rawdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[3][6]\,
      Q => rawdata(6)
    );
\rawdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[3][7]\,
      Q => rawdata(7)
    );
\rawdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[2][0]\,
      Q => rawdata(8)
    );
\rawdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rawdata_valid4_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[2][1]\,
      Q => rawdata(9)
    );
rawdata_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rawdata[15]_i_2_n_0\,
      D => rawdata_valid4_out,
      Q => rawdata_valid
    );
\signal_quality_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[1][0]\,
      Q => signal_quality(0)
    );
\signal_quality_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[1][1]\,
      Q => signal_quality(1)
    );
\signal_quality_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[1][2]\,
      Q => signal_quality(2)
    );
\signal_quality_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[1][3]\,
      Q => signal_quality(3)
    );
\signal_quality_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[1][4]\,
      Q => signal_quality(4)
    );
\signal_quality_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[1][5]\,
      Q => signal_quality(5)
    );
\signal_quality_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[1][6]\,
      Q => signal_quality(6)
    );
\signal_quality_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg_n_0_[1][7]\,
      Q => signal_quality(7)
    );
\theta_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[9]\(0),
      Q => theta(0)
    );
\theta_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[8]\(2),
      Q => theta(10)
    );
\theta_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[8]\(3),
      Q => theta(11)
    );
\theta_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[8]\(4),
      Q => theta(12)
    );
\theta_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[8]\(5),
      Q => theta(13)
    );
\theta_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[8]\(6),
      Q => theta(14)
    );
\theta_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[8]\(7),
      Q => theta(15)
    );
\theta_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[7]\(0),
      Q => theta(16)
    );
\theta_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[7]\(1),
      Q => theta(17)
    );
\theta_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[7]\(2),
      Q => theta(18)
    );
\theta_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[7]\(3),
      Q => theta(19)
    );
\theta_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[9]\(1),
      Q => theta(1)
    );
\theta_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[7]\(4),
      Q => theta(20)
    );
\theta_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[7]\(5),
      Q => theta(21)
    );
\theta_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[7]\(6),
      Q => theta(22)
    );
\theta_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[7]\(7),
      Q => theta(23)
    );
\theta_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[9]\(2),
      Q => theta(2)
    );
\theta_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[9]\(3),
      Q => theta(3)
    );
\theta_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[9]\(4),
      Q => theta(4)
    );
\theta_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[9]\(5),
      Q => theta(5)
    );
\theta_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[9]\(6),
      Q => theta(6)
    );
\theta_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[9]\(7),
      Q => theta(7)
    );
\theta_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[8]\(0),
      Q => theta(8)
    );
\theta_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => big_packet_valid0_out,
      CLR => \rawdata[15]_i_2_n_0\,
      D => \payload_reg[8]\(1),
      Q => theta(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    rx : in STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid : out STD_LOGIC
  );
  attribute CLKS_PER_BIT : integer;
  attribute CLKS_PER_BIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is 1736;
  attribute HALF_CLKS : integer;
  attribute HALF_CLKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is 868;
  attribute IDLE : string;
  attribute IDLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is "2'b00";
  attribute START : string;
  attribute START of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is "2'b01";
  attribute STOP : string;
  attribute STOP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx : entity is "2'b11";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal bit_idx : STD_LOGIC;
  signal \bit_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \data[7]_i_10_n_0\ : STD_LOGIC;
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_2_n_0\ : STD_LOGIC;
  signal \data[7]_i_4_n_0\ : STD_LOGIC;
  signal \data[7]_i_5_n_0\ : STD_LOGIC;
  signal \data[7]_i_6_n_0\ : STD_LOGIC;
  signal \data[7]_i_7_n_0\ : STD_LOGIC;
  signal \data[7]_i_8_n_0\ : STD_LOGIC;
  signal \data[7]_i_9_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rx_sync1 : STD_LOGIC;
  signal rx_sync2 : STD_LOGIC;
  signal \shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift[0]_i_2_n_0\ : STD_LOGIC;
  signal \shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift[1]_i_2_n_0\ : STD_LOGIC;
  signal \shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift[2]_i_2_n_0\ : STD_LOGIC;
  signal \shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift[3]_i_2_n_0\ : STD_LOGIC;
  signal \shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift[4]_i_2_n_0\ : STD_LOGIC;
  signal \shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift[5]_i_2_n_0\ : STD_LOGIC;
  signal \shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \shift[6]_i_2_n_0\ : STD_LOGIC;
  signal \shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift[7]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_reg_n_0_[7]\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_cnt_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "START:01,DATA:10,IDLE:00,STOP:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "START:01,DATA:10,IDLE:00,STOP:11";
  attribute SOFT_HLUTNM of \bit_idx[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_idx[1]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \shift[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \shift[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shift[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shift[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shift[7]_i_2\ : label is "soft_lutpair3";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F55F0330F550033"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => rx_sync2,
      I2 => p_0_in,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[1]\,
      I1 => \bit_idx_reg_n_0_[2]\,
      I2 => \bit_idx_reg_n_0_[0]\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F22FF00"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => rx_sync2,
      I2 => p_0_in,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_3_n_0\,
      I1 => \data[7]_i_5_n_0\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[29]\,
      I4 => \cnt_reg_n_0_[30]\,
      I5 => \data[7]_i_8_n_0\,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[11]\,
      I1 => \cnt_reg_n_0_[12]\,
      I2 => \cnt_reg_n_0_[10]\,
      I3 => \FSM_sequential_state[1]_i_5_n_0\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAAAAAAAAAAA"
    )
        port map (
      I0 => \cnt_reg_n_0_[31]\,
      I1 => \cnt_reg_n_0_[9]\,
      I2 => \cnt_reg_n_0_[5]\,
      I3 => \FSM_sequential_state[1]_i_6_n_0\,
      I4 => \cnt_reg_n_0_[7]\,
      I5 => \cnt_reg_n_0_[8]\,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[14]\,
      I1 => \cnt_reg_n_0_[13]\,
      I2 => \cnt_reg_n_0_[16]\,
      I3 => \cnt_reg_n_0_[15]\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA888"
    )
        port map (
      I0 => \cnt_reg_n_0_[6]\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \cnt_reg_n_0_[3]\,
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1)
    );
\bit_idx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FE0"
    )
        port map (
      I0 => \state__0\(1),
      I1 => rx_sync2,
      I2 => bit_idx,
      I3 => \bit_idx_reg_n_0_[0]\,
      O => \bit_idx[0]_i_1_n_0\
    );
\bit_idx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FFB800"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[0]\,
      I1 => \state__0\(1),
      I2 => rx_sync2,
      I3 => bit_idx,
      I4 => \bit_idx_reg_n_0_[1]\,
      O => \bit_idx[1]_i_1_n_0\
    );
\bit_idx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F70FFFF8F800000"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[0]\,
      I1 => \bit_idx_reg_n_0_[1]\,
      I2 => \state__0\(1),
      I3 => rx_sync2,
      I4 => bit_idx,
      I5 => \bit_idx_reg_n_0_[2]\,
      O => \bit_idx[2]_i_1_n_0\
    );
\bit_idx[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400F4000400040"
    )
        port map (
      I0 => rx_sync2,
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      I5 => p_0_in,
      O => bit_idx
    );
\bit_idx_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \bit_idx[0]_i_1_n_0\,
      Q => \bit_idx_reg_n_0_[0]\
    );
\bit_idx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \bit_idx[1]_i_1_n_0\,
      Q => \bit_idx_reg_n_0_[1]\
    );
\bit_idx_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \bit_idx[2]_i_1_n_0\,
      Q => \bit_idx_reg_n_0_[2]\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004474"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg_n_0_[0]\,
      O => cnt(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[12]_i_2_n_6\,
      O => cnt(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[12]_i_2_n_5\,
      O => cnt(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[12]_i_2_n_4\,
      O => cnt(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[16]_i_2_n_7\,
      O => cnt(13)
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[16]_i_2_n_6\,
      O => cnt(14)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[16]_i_2_n_5\,
      O => cnt(15)
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[16]_i_2_n_4\,
      O => cnt(16)
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[20]_i_2_n_7\,
      O => cnt(17)
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[20]_i_2_n_6\,
      O => cnt(18)
    );
\cnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[20]_i_2_n_5\,
      O => cnt(19)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[4]_i_2_n_7\,
      O => cnt(1)
    );
\cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[20]_i_2_n_4\,
      O => cnt(20)
    );
\cnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[24]_i_2_n_7\,
      O => cnt(21)
    );
\cnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[24]_i_2_n_6\,
      O => cnt(22)
    );
\cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[24]_i_2_n_5\,
      O => cnt(23)
    );
\cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[24]_i_2_n_4\,
      O => cnt(24)
    );
\cnt[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[28]_i_2_n_7\,
      O => cnt(25)
    );
\cnt[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[28]_i_2_n_6\,
      O => cnt(26)
    );
\cnt[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[28]_i_2_n_5\,
      O => cnt(27)
    );
\cnt[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[28]_i_2_n_4\,
      O => cnt(28)
    );
\cnt[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[31]_i_2_n_7\,
      O => cnt(29)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[4]_i_2_n_6\,
      O => cnt(2)
    );
\cnt[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[31]_i_2_n_6\,
      O => cnt(30)
    );
\cnt[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[31]_i_2_n_5\,
      O => cnt(31)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[4]_i_2_n_5\,
      O => cnt(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[4]_i_2_n_4\,
      O => cnt(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[8]_i_2_n_7\,
      O => cnt(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[8]_i_2_n_6\,
      O => cnt(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[8]_i_2_n_5\,
      O => cnt(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[8]_i_2_n_4\,
      O => cnt(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44740000"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \cnt_reg[12]_i_2_n_7\,
      O => cnt(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(0),
      Q => \cnt_reg_n_0_[0]\
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(10),
      Q => \cnt_reg_n_0_[10]\
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(11),
      Q => \cnt_reg_n_0_[11]\
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(12),
      Q => \cnt_reg_n_0_[12]\
    );
\cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_2_n_0\,
      CO(3) => \cnt_reg[12]_i_2_n_0\,
      CO(2) => \cnt_reg[12]_i_2_n_1\,
      CO(1) => \cnt_reg[12]_i_2_n_2\,
      CO(0) => \cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_2_n_4\,
      O(2) => \cnt_reg[12]_i_2_n_5\,
      O(1) => \cnt_reg[12]_i_2_n_6\,
      O(0) => \cnt_reg[12]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[12]\,
      S(2) => \cnt_reg_n_0_[11]\,
      S(1) => \cnt_reg_n_0_[10]\,
      S(0) => \cnt_reg_n_0_[9]\
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(13),
      Q => \cnt_reg_n_0_[13]\
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(14),
      Q => \cnt_reg_n_0_[14]\
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(15),
      Q => \cnt_reg_n_0_[15]\
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(16),
      Q => \cnt_reg_n_0_[16]\
    );
\cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_2_n_0\,
      CO(3) => \cnt_reg[16]_i_2_n_0\,
      CO(2) => \cnt_reg[16]_i_2_n_1\,
      CO(1) => \cnt_reg[16]_i_2_n_2\,
      CO(0) => \cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[16]_i_2_n_4\,
      O(2) => \cnt_reg[16]_i_2_n_5\,
      O(1) => \cnt_reg[16]_i_2_n_6\,
      O(0) => \cnt_reg[16]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[16]\,
      S(2) => \cnt_reg_n_0_[15]\,
      S(1) => \cnt_reg_n_0_[14]\,
      S(0) => \cnt_reg_n_0_[13]\
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(17),
      Q => \cnt_reg_n_0_[17]\
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(18),
      Q => \cnt_reg_n_0_[18]\
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(19),
      Q => \cnt_reg_n_0_[19]\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(1),
      Q => \cnt_reg_n_0_[1]\
    );
\cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(20),
      Q => \cnt_reg_n_0_[20]\
    );
\cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_2_n_0\,
      CO(3) => \cnt_reg[20]_i_2_n_0\,
      CO(2) => \cnt_reg[20]_i_2_n_1\,
      CO(1) => \cnt_reg[20]_i_2_n_2\,
      CO(0) => \cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[20]_i_2_n_4\,
      O(2) => \cnt_reg[20]_i_2_n_5\,
      O(1) => \cnt_reg[20]_i_2_n_6\,
      O(0) => \cnt_reg[20]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[20]\,
      S(2) => \cnt_reg_n_0_[19]\,
      S(1) => \cnt_reg_n_0_[18]\,
      S(0) => \cnt_reg_n_0_[17]\
    );
\cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(21),
      Q => \cnt_reg_n_0_[21]\
    );
\cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(22),
      Q => \cnt_reg_n_0_[22]\
    );
\cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(23),
      Q => \cnt_reg_n_0_[23]\
    );
\cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(24),
      Q => \cnt_reg_n_0_[24]\
    );
\cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[20]_i_2_n_0\,
      CO(3) => \cnt_reg[24]_i_2_n_0\,
      CO(2) => \cnt_reg[24]_i_2_n_1\,
      CO(1) => \cnt_reg[24]_i_2_n_2\,
      CO(0) => \cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[24]_i_2_n_4\,
      O(2) => \cnt_reg[24]_i_2_n_5\,
      O(1) => \cnt_reg[24]_i_2_n_6\,
      O(0) => \cnt_reg[24]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[24]\,
      S(2) => \cnt_reg_n_0_[23]\,
      S(1) => \cnt_reg_n_0_[22]\,
      S(0) => \cnt_reg_n_0_[21]\
    );
\cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(25),
      Q => \cnt_reg_n_0_[25]\
    );
\cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(26),
      Q => \cnt_reg_n_0_[26]\
    );
\cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(27),
      Q => \cnt_reg_n_0_[27]\
    );
\cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(28),
      Q => \cnt_reg_n_0_[28]\
    );
\cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[24]_i_2_n_0\,
      CO(3) => \cnt_reg[28]_i_2_n_0\,
      CO(2) => \cnt_reg[28]_i_2_n_1\,
      CO(1) => \cnt_reg[28]_i_2_n_2\,
      CO(0) => \cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[28]_i_2_n_4\,
      O(2) => \cnt_reg[28]_i_2_n_5\,
      O(1) => \cnt_reg[28]_i_2_n_6\,
      O(0) => \cnt_reg[28]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[28]\,
      S(2) => \cnt_reg_n_0_[27]\,
      S(1) => \cnt_reg_n_0_[26]\,
      S(0) => \cnt_reg_n_0_[25]\
    );
\cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(29),
      Q => \cnt_reg_n_0_[29]\
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(2),
      Q => \cnt_reg_n_0_[2]\
    );
\cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(30),
      Q => \cnt_reg_n_0_[30]\
    );
\cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(31),
      Q => \cnt_reg_n_0_[31]\
    );
\cnt_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cnt_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_reg[31]_i_2_n_2\,
      CO(0) => \cnt_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2) => \cnt_reg[31]_i_2_n_5\,
      O(1) => \cnt_reg[31]_i_2_n_6\,
      O(0) => \cnt_reg[31]_i_2_n_7\,
      S(3) => '0',
      S(2) => \cnt_reg_n_0_[31]\,
      S(1) => \cnt_reg_n_0_[30]\,
      S(0) => \cnt_reg_n_0_[29]\
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(3),
      Q => \cnt_reg_n_0_[3]\
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(4),
      Q => \cnt_reg_n_0_[4]\
    );
\cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[4]_i_2_n_0\,
      CO(2) => \cnt_reg[4]_i_2_n_1\,
      CO(1) => \cnt_reg[4]_i_2_n_2\,
      CO(0) => \cnt_reg[4]_i_2_n_3\,
      CYINIT => \cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_2_n_4\,
      O(2) => \cnt_reg[4]_i_2_n_5\,
      O(1) => \cnt_reg[4]_i_2_n_6\,
      O(0) => \cnt_reg[4]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[4]\,
      S(2) => \cnt_reg_n_0_[3]\,
      S(1) => \cnt_reg_n_0_[2]\,
      S(0) => \cnt_reg_n_0_[1]\
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(5),
      Q => \cnt_reg_n_0_[5]\
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(6),
      Q => \cnt_reg_n_0_[6]\
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(7),
      Q => \cnt_reg_n_0_[7]\
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(8),
      Q => \cnt_reg_n_0_[8]\
    );
\cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_2_n_0\,
      CO(3) => \cnt_reg[8]_i_2_n_0\,
      CO(2) => \cnt_reg[8]_i_2_n_1\,
      CO(1) => \cnt_reg[8]_i_2_n_2\,
      CO(0) => \cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_2_n_4\,
      O(2) => \cnt_reg[8]_i_2_n_5\,
      O(1) => \cnt_reg[8]_i_2_n_6\,
      O(0) => \cnt_reg[8]_i_2_n_7\,
      S(3) => \cnt_reg_n_0_[8]\,
      S(2) => \cnt_reg_n_0_[7]\,
      S(1) => \cnt_reg_n_0_[6]\,
      S(0) => \cnt_reg_n_0_[5]\
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => cnt(9),
      Q => \cnt_reg_n_0_[9]\
    );
\data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => p_0_in,
      I3 => rx_sync2,
      O => \data[7]_i_1_n_0\
    );
\data[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[22]\,
      I1 => \cnt_reg_n_0_[21]\,
      I2 => \cnt_reg_n_0_[24]\,
      I3 => \cnt_reg_n_0_[23]\,
      O => \data[7]_i_10_n_0\
    );
\data[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \data[7]_i_2_n_0\
    );
\data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data[7]_i_4_n_0\,
      I1 => \data[7]_i_5_n_0\,
      I2 => \cnt_reg_n_0_[31]\,
      I3 => \data[7]_i_6_n_0\,
      I4 => \data[7]_i_7_n_0\,
      I5 => \data[7]_i_8_n_0\,
      O => p_0_in
    );
\data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[12]\,
      I1 => \cnt_reg_n_0_[11]\,
      I2 => \cnt_reg_n_0_[15]\,
      I3 => \cnt_reg_n_0_[16]\,
      I4 => \cnt_reg_n_0_[13]\,
      I5 => \cnt_reg_n_0_[14]\,
      O => \data[7]_i_4_n_0\
    );
\data[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[26]\,
      I1 => \cnt_reg_n_0_[25]\,
      I2 => \cnt_reg_n_0_[28]\,
      I3 => \cnt_reg_n_0_[27]\,
      O => \data[7]_i_5_n_0\
    );
\data[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888800000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[9]\,
      I1 => \cnt_reg_n_0_[8]\,
      I2 => \cnt_reg_n_0_[7]\,
      I3 => \data[7]_i_9_n_0\,
      I4 => \cnt_reg_n_0_[6]\,
      I5 => \cnt_reg_n_0_[10]\,
      O => \data[7]_i_6_n_0\
    );
\data[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cnt_reg_n_0_[29]\,
      I1 => \cnt_reg_n_0_[30]\,
      O => \data[7]_i_7_n_0\
    );
\data[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[19]\,
      I1 => \cnt_reg_n_0_[20]\,
      I2 => \cnt_reg_n_0_[17]\,
      I3 => \cnt_reg_n_0_[18]\,
      I4 => \data[7]_i_10_n_0\,
      O => \data[7]_i_8_n_0\
    );
\data[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEEEEE"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \cnt_reg_n_0_[5]\,
      O => \data[7]_i_9_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      CLR => \data[7]_i_2_n_0\,
      D => \shift_reg_n_0_[0]\,
      Q => data(0)
    );
\data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      CLR => \data[7]_i_2_n_0\,
      D => \shift_reg_n_0_[1]\,
      Q => data(1)
    );
\data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      CLR => \data[7]_i_2_n_0\,
      D => \shift_reg_n_0_[2]\,
      Q => data(2)
    );
\data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      CLR => \data[7]_i_2_n_0\,
      D => \shift_reg_n_0_[3]\,
      Q => data(3)
    );
\data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      CLR => \data[7]_i_2_n_0\,
      D => \shift_reg_n_0_[4]\,
      Q => data(4)
    );
\data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      CLR => \data[7]_i_2_n_0\,
      D => \shift_reg_n_0_[5]\,
      Q => data(5)
    );
\data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      CLR => \data[7]_i_2_n_0\,
      D => \shift_reg_n_0_[6]\,
      Q => data(6)
    );
\data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      CLR => \data[7]_i_2_n_0\,
      D => \shift_reg_n_0_[7]\,
      Q => data(7)
    );
rx_sync1_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => rx,
      PRE => \data[7]_i_2_n_0\,
      Q => rx_sync1
    );
rx_sync2_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => rx_sync1,
      PRE => \data[7]_i_2_n_0\,
      Q => rx_sync2
    );
\shift[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => rx_sync2,
      I1 => \state__0\(0),
      I2 => p_0_in,
      I3 => \shift[0]_i_2_n_0\,
      I4 => \state__0\(1),
      I5 => \shift_reg_n_0_[0]\,
      O => \shift[0]_i_1_n_0\
    );
\shift[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[2]\,
      I1 => \bit_idx_reg_n_0_[0]\,
      I2 => \bit_idx_reg_n_0_[1]\,
      O => \shift[0]_i_2_n_0\
    );
\shift[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => rx_sync2,
      I1 => \state__0\(0),
      I2 => p_0_in,
      I3 => \shift[1]_i_2_n_0\,
      I4 => \state__0\(1),
      I5 => \shift_reg_n_0_[1]\,
      O => \shift[1]_i_1_n_0\
    );
\shift[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[2]\,
      I1 => \bit_idx_reg_n_0_[0]\,
      I2 => \bit_idx_reg_n_0_[1]\,
      O => \shift[1]_i_2_n_0\
    );
\shift[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => rx_sync2,
      I1 => \state__0\(0),
      I2 => p_0_in,
      I3 => \shift[2]_i_2_n_0\,
      I4 => \state__0\(1),
      I5 => \shift_reg_n_0_[2]\,
      O => \shift[2]_i_1_n_0\
    );
\shift[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[2]\,
      I1 => \bit_idx_reg_n_0_[1]\,
      I2 => \bit_idx_reg_n_0_[0]\,
      O => \shift[2]_i_2_n_0\
    );
\shift[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => rx_sync2,
      I1 => \state__0\(0),
      I2 => p_0_in,
      I3 => \shift[3]_i_2_n_0\,
      I4 => \state__0\(1),
      I5 => \shift_reg_n_0_[3]\,
      O => \shift[3]_i_1_n_0\
    );
\shift[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[2]\,
      I1 => \bit_idx_reg_n_0_[0]\,
      I2 => \bit_idx_reg_n_0_[1]\,
      O => \shift[3]_i_2_n_0\
    );
\shift[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => rx_sync2,
      I1 => \state__0\(0),
      I2 => p_0_in,
      I3 => \shift[4]_i_2_n_0\,
      I4 => \state__0\(1),
      I5 => \shift_reg_n_0_[4]\,
      O => \shift[4]_i_1_n_0\
    );
\shift[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[2]\,
      I1 => \bit_idx_reg_n_0_[0]\,
      I2 => \bit_idx_reg_n_0_[1]\,
      O => \shift[4]_i_2_n_0\
    );
\shift[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => rx_sync2,
      I1 => \state__0\(0),
      I2 => p_0_in,
      I3 => \shift[5]_i_2_n_0\,
      I4 => \state__0\(1),
      I5 => \shift_reg_n_0_[5]\,
      O => \shift[5]_i_1_n_0\
    );
\shift[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[2]\,
      I1 => \bit_idx_reg_n_0_[0]\,
      I2 => \bit_idx_reg_n_0_[1]\,
      O => \shift[5]_i_2_n_0\
    );
\shift[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => rx_sync2,
      I1 => \state__0\(0),
      I2 => p_0_in,
      I3 => \shift[6]_i_2_n_0\,
      I4 => \state__0\(1),
      I5 => \shift_reg_n_0_[6]\,
      O => \shift[6]_i_1_n_0\
    );
\shift[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[2]\,
      I1 => \bit_idx_reg_n_0_[1]\,
      I2 => \bit_idx_reg_n_0_[0]\,
      O => \shift[6]_i_2_n_0\
    );
\shift[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => rx_sync2,
      I1 => \state__0\(0),
      I2 => p_0_in,
      I3 => \shift[7]_i_2_n_0\,
      I4 => \state__0\(1),
      I5 => \shift_reg_n_0_[7]\,
      O => \shift[7]_i_1_n_0\
    );
\shift[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[2]\,
      I1 => \bit_idx_reg_n_0_[0]\,
      I2 => \bit_idx_reg_n_0_[1]\,
      O => \shift[7]_i_2_n_0\
    );
\shift_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \shift[0]_i_1_n_0\,
      Q => \shift_reg_n_0_[0]\
    );
\shift_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \shift[1]_i_1_n_0\,
      Q => \shift_reg_n_0_[1]\
    );
\shift_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \shift[2]_i_1_n_0\,
      Q => \shift_reg_n_0_[2]\
    );
\shift_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \shift[3]_i_1_n_0\,
      Q => \shift_reg_n_0_[3]\
    );
\shift_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \shift[4]_i_1_n_0\,
      Q => \shift_reg_n_0_[4]\
    );
\shift_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \shift[5]_i_1_n_0\,
      Q => \shift_reg_n_0_[5]\
    );
\shift_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \shift[6]_i_1_n_0\,
      Q => \shift_reg_n_0_[6]\
    );
\shift_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \shift[7]_i_1_n_0\,
      Q => \shift_reg_n_0_[7]\
    );
valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \data[7]_i_2_n_0\,
      D => \data[7]_i_1_n_0\,
      Q => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eeg_pl_top is
  port (
    td_matrix_ready : out STD_LOGIC;
    fd_matrix_ready : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    uart_rx : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eeg_pl_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eeg_pl_top is
  signal \FSM_onehot_state[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal att_pending : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal attention : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \band_pending_reg[0]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \band_pending_reg[1]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \band_pending_reg[2]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \band_pending_reg[3]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \band_pending_reg[4]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \band_pending_reg[5]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \band_pending_reg[6]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \band_pending_reg[7]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal band_pending_valid_i_1_n_0 : STD_LOGIC;
  signal \bram_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[0]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[10]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[10]_i_3_n_0\ : STD_LOGIC;
  signal \bram_addr[10]_i_4_n_0\ : STD_LOGIC;
  signal \bram_addr[10]_i_5_n_0\ : STD_LOGIC;
  signal \bram_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[1]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[2]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[10]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[10]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[10]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[11]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[11]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[11]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[12]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[12]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[12]_i_6_n_0\ : STD_LOGIC;
  signal \bram_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[13]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[13]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[13]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[13]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[14]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[14]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[14]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[15]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[15]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[15]_i_6_n_0\ : STD_LOGIC;
  signal \bram_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[16]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[16]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[16]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[17]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[17]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[17]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[18]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[18]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[18]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[19]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[19]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[19]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[20]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[20]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[20]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[21]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[21]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[21]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[22]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[22]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[22]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[23]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[23]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[2]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[2]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[4]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[4]_i_6_n_0\ : STD_LOGIC;
  signal \bram_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[5]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[6]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[6]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[8]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[8]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data[8]_i_6_n_0\ : STD_LOGIC;
  signal \bram_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data[9]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[9]_i_3_n_0\ : STD_LOGIC;
  signal \bram_data[9]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data[9]_i_5_n_0\ : STD_LOGIC;
  signal \bram_data_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data_reg[12]_i_4_n_1\ : STD_LOGIC;
  signal \bram_data_reg[12]_i_4_n_2\ : STD_LOGIC;
  signal \bram_data_reg[12]_i_4_n_3\ : STD_LOGIC;
  signal \bram_data_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \bram_data_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \bram_data_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data_reg[4]_i_4_n_1\ : STD_LOGIC;
  signal \bram_data_reg[4]_i_4_n_2\ : STD_LOGIC;
  signal \bram_data_reg[4]_i_4_n_3\ : STD_LOGIC;
  signal \bram_data_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \bram_data_reg[8]_i_4_n_1\ : STD_LOGIC;
  signal \bram_data_reg[8]_i_4_n_2\ : STD_LOGIC;
  signal \bram_data_reg[8]_i_4_n_3\ : STD_LOGIC;
  signal delta : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal high_alpha : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal high_beta : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal ila_band_pending_valid : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of ila_band_pending_valid : signal is std.standard.true;
  signal ila_big_packet_valid : STD_LOGIC;
  attribute MARK_DEBUG of ila_big_packet_valid : signal is std.standard.true;
  signal ila_bram_addr : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute MARK_DEBUG of ila_bram_addr : signal is std.standard.true;
  signal ila_bram_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of ila_bram_data : signal is std.standard.true;
  signal ila_bram_we : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of ila_bram_we : signal is std.standard.true;
  signal ila_raw_pending_valid : STD_LOGIC;
  attribute MARK_DEBUG of ila_raw_pending_valid : signal is std.standard.true;
  signal ila_rawdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of ila_rawdata : signal is std.standard.true;
  signal ila_rawdata_valid : STD_LOGIC;
  attribute MARK_DEBUG of ila_rawdata_valid : signal is std.standard.true;
  signal ila_rx_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of ila_rx_byte : signal is std.standard.true;
  signal ila_rx_valid : STD_LOGIC;
  attribute MARK_DEBUG of ila_rx_valid : signal is std.standard.true;
  signal ila_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of ila_state : signal is std.standard.true;
  signal ila_write_seq : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of ila_write_seq : signal is std.standard.true;
  signal low_alpha : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal low_beta : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal low_gamma : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal med_pending : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal meditation : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal middle_gamma : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_9_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal quality_pending : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal raw_pending : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal raw_pending_valid_i_1_n_0 : STD_LOGIC;
  signal signal_quality : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \status_seq[7]_i_2_n_0\ : STD_LOGIC;
  signal status_seq_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal theta : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal write_seq : STD_LOGIC;
  signal \write_seq_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_seq_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \write_seq_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \write_seq_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \write_seq_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \write_seq_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \write_seq_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \write_seq_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \write_seq_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \write_seq_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \write_seq_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \write_seq_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \write_seq_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \write_seq_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \write_seq_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \write_seq_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_seq_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \write_seq_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \write_seq_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \write_seq_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \write_seq_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \write_seq_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \write_seq_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \write_seq_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_seq_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \write_seq_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \write_seq_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \write_seq_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \write_seq_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \write_seq_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \write_seq_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_bram_data_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bram_data_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_write_seq_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair44";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[10]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[11]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[12]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "ST_B0:0000000010000,ST_PTR:0000000001000,ST_RAW:0000000000100,ST_B7:0100000000000,ST_STAT:1000000000000,ST_B6:0010000000000,ST_IDLE:0000000000010,ST_INIT:0000000000001,ST_B5:0001000000000,ST_B3:0000010000000,ST_B4:0000100000000,ST_B2:0000001000000,ST_B1:0000000100000";
  attribute SOFT_HLUTNM of \bram_addr[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bram_addr[10]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bram_addr[10]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bram_addr[1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bram_addr[2]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bram_addr[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bram_addr[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bram_addr[6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bram_addr[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bram_addr[8]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bram_addr[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bram_data[0]_i_4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bram_data[10]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bram_data[11]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bram_data[12]_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bram_data[13]_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bram_data[14]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bram_data[15]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bram_data[1]_i_4\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \bram_data[24]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bram_data[2]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \bram_data[3]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \bram_data[4]_i_5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bram_data[5]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bram_data[6]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bram_data[7]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bram_data[8]_i_5\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bram_data[9]_i_4\ : label is "soft_lutpair39";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bram_data_reg[12]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \bram_data_reg[15]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \bram_data_reg[4]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \bram_data_reg[8]_i_4\ : label is 35;
  attribute SOFT_HLUTNM of raw_pending_valid_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \status_seq[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \status_seq[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \status_seq[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \status_seq[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \status_seq[6]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \status_seq[7]_i_1\ : label is "soft_lutpair31";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of u_tgam_parser : label is "soft";
  attribute S_CHECK : string;
  attribute S_CHECK of u_tgam_parser : label is "3'b100";
  attribute S_IDLE : string;
  attribute S_IDLE of u_tgam_parser : label is "3'b000";
  attribute S_LENGTH : string;
  attribute S_LENGTH of u_tgam_parser : label is "3'b010";
  attribute S_PAYLOAD : string;
  attribute S_PAYLOAD of u_tgam_parser : label is "3'b011";
  attribute S_SYNC2 : string;
  attribute S_SYNC2 of u_tgam_parser : label is "3'b001";
  attribute CLKS_PER_BIT : integer;
  attribute CLKS_PER_BIT of u_uart_rx : label is 1736;
  attribute DATA : string;
  attribute DATA of u_uart_rx : label is "2'b10";
  attribute HALF_CLKS : integer;
  attribute HALF_CLKS of u_uart_rx : label is 868;
  attribute IDLE : string;
  attribute IDLE of u_uart_rx : label is "2'b00";
  attribute KEEP_HIERARCHY of u_uart_rx : label is "soft";
  attribute START : string;
  attribute START of u_uart_rx : label is "2'b01";
  attribute STOP : string;
  attribute STOP of u_uart_rx : label is "2'b11";
  attribute ADDER_THRESHOLD of \write_seq_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \write_seq_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \write_seq_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \write_seq_reg[8]_i_1\ : label is 11;
begin
  bram_addr(10 downto 0) <= ila_bram_addr(10 downto 0);
  bram_data(31 downto 0) <= ila_bram_data(31 downto 0);
  bram_we(0) <= ila_bram_we(0);
  fd_matrix_ready <= ila_big_packet_valid;
  td_matrix_ready <= ila_rawdata_valid;
\FSM_onehot_state[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFA8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => ila_band_pending_valid,
      I2 => ila_raw_pending_valid,
      I3 => \bram_addr[10]_i_4_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[12]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => write_seq,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[12]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => ila_raw_pending_valid,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => ila_raw_pending_valid,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      D => '0',
      PRE => \bram_addr[10]_i_3_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[9]\,
      Q => \FSM_onehot_state_reg_n_0_[10]\
    );
\FSM_onehot_state_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[10]\,
      Q => \FSM_onehot_state_reg_n_0_[11]\
    );
\FSM_onehot_state_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[11]\,
      Q => \FSM_onehot_state_reg_n_0_[12]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => write_seq
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[5]\,
      Q => \FSM_onehot_state_reg_n_0_[6]\
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[6]\,
      Q => \FSM_onehot_state_reg_n_0_[7]\
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[7]\,
      Q => \FSM_onehot_state_reg_n_0_[8]\
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[12]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[8]\,
      Q => \FSM_onehot_state_reg_n_0_[9]\
    );
\att_pending_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => attention(0),
      Q => att_pending(0)
    );
\att_pending_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => attention(1),
      Q => att_pending(1)
    );
\att_pending_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => attention(2),
      Q => att_pending(2)
    );
\att_pending_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => attention(3),
      Q => att_pending(3)
    );
\att_pending_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => attention(4),
      Q => att_pending(4)
    );
\att_pending_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => attention(5),
      Q => att_pending(5)
    );
\att_pending_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => attention(6),
      Q => att_pending(6)
    );
\att_pending_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => attention(7),
      Q => att_pending(7)
    );
\band_pending_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(0),
      Q => \band_pending_reg[0]\(0)
    );
\band_pending_reg[0][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(10),
      Q => \band_pending_reg[0]\(10)
    );
\band_pending_reg[0][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(11),
      Q => \band_pending_reg[0]\(11)
    );
\band_pending_reg[0][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(12),
      Q => \band_pending_reg[0]\(12)
    );
\band_pending_reg[0][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(13),
      Q => \band_pending_reg[0]\(13)
    );
\band_pending_reg[0][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(14),
      Q => \band_pending_reg[0]\(14)
    );
\band_pending_reg[0][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(15),
      Q => \band_pending_reg[0]\(15)
    );
\band_pending_reg[0][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(16),
      Q => \band_pending_reg[0]\(16)
    );
\band_pending_reg[0][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(17),
      Q => \band_pending_reg[0]\(17)
    );
\band_pending_reg[0][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(18),
      Q => \band_pending_reg[0]\(18)
    );
\band_pending_reg[0][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(19),
      Q => \band_pending_reg[0]\(19)
    );
\band_pending_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(1),
      Q => \band_pending_reg[0]\(1)
    );
\band_pending_reg[0][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(20),
      Q => \band_pending_reg[0]\(20)
    );
\band_pending_reg[0][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(21),
      Q => \band_pending_reg[0]\(21)
    );
\band_pending_reg[0][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(22),
      Q => \band_pending_reg[0]\(22)
    );
\band_pending_reg[0][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(23),
      Q => \band_pending_reg[0]\(23)
    );
\band_pending_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(2),
      Q => \band_pending_reg[0]\(2)
    );
\band_pending_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(3),
      Q => \band_pending_reg[0]\(3)
    );
\band_pending_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(4),
      Q => \band_pending_reg[0]\(4)
    );
\band_pending_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(5),
      Q => \band_pending_reg[0]\(5)
    );
\band_pending_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(6),
      Q => \band_pending_reg[0]\(6)
    );
\band_pending_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(7),
      Q => \band_pending_reg[0]\(7)
    );
\band_pending_reg[0][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(8),
      Q => \band_pending_reg[0]\(8)
    );
\band_pending_reg[0][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => delta(9),
      Q => \band_pending_reg[0]\(9)
    );
\band_pending_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(0),
      Q => \band_pending_reg[1]\(0)
    );
\band_pending_reg[1][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(10),
      Q => \band_pending_reg[1]\(10)
    );
\band_pending_reg[1][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(11),
      Q => \band_pending_reg[1]\(11)
    );
\band_pending_reg[1][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(12),
      Q => \band_pending_reg[1]\(12)
    );
\band_pending_reg[1][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(13),
      Q => \band_pending_reg[1]\(13)
    );
\band_pending_reg[1][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(14),
      Q => \band_pending_reg[1]\(14)
    );
\band_pending_reg[1][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(15),
      Q => \band_pending_reg[1]\(15)
    );
\band_pending_reg[1][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(16),
      Q => \band_pending_reg[1]\(16)
    );
\band_pending_reg[1][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(17),
      Q => \band_pending_reg[1]\(17)
    );
\band_pending_reg[1][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(18),
      Q => \band_pending_reg[1]\(18)
    );
\band_pending_reg[1][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(19),
      Q => \band_pending_reg[1]\(19)
    );
\band_pending_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(1),
      Q => \band_pending_reg[1]\(1)
    );
\band_pending_reg[1][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(20),
      Q => \band_pending_reg[1]\(20)
    );
\band_pending_reg[1][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(21),
      Q => \band_pending_reg[1]\(21)
    );
\band_pending_reg[1][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(22),
      Q => \band_pending_reg[1]\(22)
    );
\band_pending_reg[1][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(23),
      Q => \band_pending_reg[1]\(23)
    );
\band_pending_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(2),
      Q => \band_pending_reg[1]\(2)
    );
\band_pending_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(3),
      Q => \band_pending_reg[1]\(3)
    );
\band_pending_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(4),
      Q => \band_pending_reg[1]\(4)
    );
\band_pending_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(5),
      Q => \band_pending_reg[1]\(5)
    );
\band_pending_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(6),
      Q => \band_pending_reg[1]\(6)
    );
\band_pending_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(7),
      Q => \band_pending_reg[1]\(7)
    );
\band_pending_reg[1][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(8),
      Q => \band_pending_reg[1]\(8)
    );
\band_pending_reg[1][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => theta(9),
      Q => \band_pending_reg[1]\(9)
    );
\band_pending_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(0),
      Q => \band_pending_reg[2]\(0)
    );
\band_pending_reg[2][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(10),
      Q => \band_pending_reg[2]\(10)
    );
\band_pending_reg[2][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(11),
      Q => \band_pending_reg[2]\(11)
    );
\band_pending_reg[2][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(12),
      Q => \band_pending_reg[2]\(12)
    );
\band_pending_reg[2][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(13),
      Q => \band_pending_reg[2]\(13)
    );
\band_pending_reg[2][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(14),
      Q => \band_pending_reg[2]\(14)
    );
\band_pending_reg[2][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(15),
      Q => \band_pending_reg[2]\(15)
    );
\band_pending_reg[2][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(16),
      Q => \band_pending_reg[2]\(16)
    );
\band_pending_reg[2][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(17),
      Q => \band_pending_reg[2]\(17)
    );
\band_pending_reg[2][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(18),
      Q => \band_pending_reg[2]\(18)
    );
\band_pending_reg[2][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(19),
      Q => \band_pending_reg[2]\(19)
    );
\band_pending_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(1),
      Q => \band_pending_reg[2]\(1)
    );
\band_pending_reg[2][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(20),
      Q => \band_pending_reg[2]\(20)
    );
\band_pending_reg[2][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(21),
      Q => \band_pending_reg[2]\(21)
    );
\band_pending_reg[2][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(22),
      Q => \band_pending_reg[2]\(22)
    );
\band_pending_reg[2][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(23),
      Q => \band_pending_reg[2]\(23)
    );
\band_pending_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(2),
      Q => \band_pending_reg[2]\(2)
    );
\band_pending_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(3),
      Q => \band_pending_reg[2]\(3)
    );
\band_pending_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(4),
      Q => \band_pending_reg[2]\(4)
    );
\band_pending_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(5),
      Q => \band_pending_reg[2]\(5)
    );
\band_pending_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(6),
      Q => \band_pending_reg[2]\(6)
    );
\band_pending_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(7),
      Q => \band_pending_reg[2]\(7)
    );
\band_pending_reg[2][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(8),
      Q => \band_pending_reg[2]\(8)
    );
\band_pending_reg[2][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_alpha(9),
      Q => \band_pending_reg[2]\(9)
    );
\band_pending_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(0),
      Q => \band_pending_reg[3]\(0)
    );
\band_pending_reg[3][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(10),
      Q => \band_pending_reg[3]\(10)
    );
\band_pending_reg[3][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(11),
      Q => \band_pending_reg[3]\(11)
    );
\band_pending_reg[3][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(12),
      Q => \band_pending_reg[3]\(12)
    );
\band_pending_reg[3][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(13),
      Q => \band_pending_reg[3]\(13)
    );
\band_pending_reg[3][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(14),
      Q => \band_pending_reg[3]\(14)
    );
\band_pending_reg[3][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(15),
      Q => \band_pending_reg[3]\(15)
    );
\band_pending_reg[3][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(16),
      Q => \band_pending_reg[3]\(16)
    );
\band_pending_reg[3][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(17),
      Q => \band_pending_reg[3]\(17)
    );
\band_pending_reg[3][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(18),
      Q => \band_pending_reg[3]\(18)
    );
\band_pending_reg[3][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(19),
      Q => \band_pending_reg[3]\(19)
    );
\band_pending_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(1),
      Q => \band_pending_reg[3]\(1)
    );
\band_pending_reg[3][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(20),
      Q => \band_pending_reg[3]\(20)
    );
\band_pending_reg[3][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(21),
      Q => \band_pending_reg[3]\(21)
    );
\band_pending_reg[3][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(22),
      Q => \band_pending_reg[3]\(22)
    );
\band_pending_reg[3][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(23),
      Q => \band_pending_reg[3]\(23)
    );
\band_pending_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(2),
      Q => \band_pending_reg[3]\(2)
    );
\band_pending_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(3),
      Q => \band_pending_reg[3]\(3)
    );
\band_pending_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(4),
      Q => \band_pending_reg[3]\(4)
    );
\band_pending_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(5),
      Q => \band_pending_reg[3]\(5)
    );
\band_pending_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(6),
      Q => \band_pending_reg[3]\(6)
    );
\band_pending_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(7),
      Q => \band_pending_reg[3]\(7)
    );
\band_pending_reg[3][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(8),
      Q => \band_pending_reg[3]\(8)
    );
\band_pending_reg[3][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_alpha(9),
      Q => \band_pending_reg[3]\(9)
    );
\band_pending_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(0),
      Q => \band_pending_reg[4]\(0)
    );
\band_pending_reg[4][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(10),
      Q => \band_pending_reg[4]\(10)
    );
\band_pending_reg[4][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(11),
      Q => \band_pending_reg[4]\(11)
    );
\band_pending_reg[4][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(12),
      Q => \band_pending_reg[4]\(12)
    );
\band_pending_reg[4][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(13),
      Q => \band_pending_reg[4]\(13)
    );
\band_pending_reg[4][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(14),
      Q => \band_pending_reg[4]\(14)
    );
\band_pending_reg[4][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(15),
      Q => \band_pending_reg[4]\(15)
    );
\band_pending_reg[4][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(16),
      Q => \band_pending_reg[4]\(16)
    );
\band_pending_reg[4][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(17),
      Q => \band_pending_reg[4]\(17)
    );
\band_pending_reg[4][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(18),
      Q => \band_pending_reg[4]\(18)
    );
\band_pending_reg[4][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(19),
      Q => \band_pending_reg[4]\(19)
    );
\band_pending_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(1),
      Q => \band_pending_reg[4]\(1)
    );
\band_pending_reg[4][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(20),
      Q => \band_pending_reg[4]\(20)
    );
\band_pending_reg[4][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(21),
      Q => \band_pending_reg[4]\(21)
    );
\band_pending_reg[4][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(22),
      Q => \band_pending_reg[4]\(22)
    );
\band_pending_reg[4][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(23),
      Q => \band_pending_reg[4]\(23)
    );
\band_pending_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(2),
      Q => \band_pending_reg[4]\(2)
    );
\band_pending_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(3),
      Q => \band_pending_reg[4]\(3)
    );
\band_pending_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(4),
      Q => \band_pending_reg[4]\(4)
    );
\band_pending_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(5),
      Q => \band_pending_reg[4]\(5)
    );
\band_pending_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(6),
      Q => \band_pending_reg[4]\(6)
    );
\band_pending_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(7),
      Q => \band_pending_reg[4]\(7)
    );
\band_pending_reg[4][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(8),
      Q => \band_pending_reg[4]\(8)
    );
\band_pending_reg[4][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_beta(9),
      Q => \band_pending_reg[4]\(9)
    );
\band_pending_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(0),
      Q => \band_pending_reg[5]\(0)
    );
\band_pending_reg[5][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(10),
      Q => \band_pending_reg[5]\(10)
    );
\band_pending_reg[5][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(11),
      Q => \band_pending_reg[5]\(11)
    );
\band_pending_reg[5][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(12),
      Q => \band_pending_reg[5]\(12)
    );
\band_pending_reg[5][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(13),
      Q => \band_pending_reg[5]\(13)
    );
\band_pending_reg[5][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(14),
      Q => \band_pending_reg[5]\(14)
    );
\band_pending_reg[5][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(15),
      Q => \band_pending_reg[5]\(15)
    );
\band_pending_reg[5][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(16),
      Q => \band_pending_reg[5]\(16)
    );
\band_pending_reg[5][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(17),
      Q => \band_pending_reg[5]\(17)
    );
\band_pending_reg[5][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(18),
      Q => \band_pending_reg[5]\(18)
    );
\band_pending_reg[5][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(19),
      Q => \band_pending_reg[5]\(19)
    );
\band_pending_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(1),
      Q => \band_pending_reg[5]\(1)
    );
\band_pending_reg[5][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(20),
      Q => \band_pending_reg[5]\(20)
    );
\band_pending_reg[5][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(21),
      Q => \band_pending_reg[5]\(21)
    );
\band_pending_reg[5][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(22),
      Q => \band_pending_reg[5]\(22)
    );
\band_pending_reg[5][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(23),
      Q => \band_pending_reg[5]\(23)
    );
\band_pending_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(2),
      Q => \band_pending_reg[5]\(2)
    );
\band_pending_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(3),
      Q => \band_pending_reg[5]\(3)
    );
\band_pending_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(4),
      Q => \band_pending_reg[5]\(4)
    );
\band_pending_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(5),
      Q => \band_pending_reg[5]\(5)
    );
\band_pending_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(6),
      Q => \band_pending_reg[5]\(6)
    );
\band_pending_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(7),
      Q => \band_pending_reg[5]\(7)
    );
\band_pending_reg[5][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(8),
      Q => \band_pending_reg[5]\(8)
    );
\band_pending_reg[5][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => high_beta(9),
      Q => \band_pending_reg[5]\(9)
    );
\band_pending_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(0),
      Q => \band_pending_reg[6]\(0)
    );
\band_pending_reg[6][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(10),
      Q => \band_pending_reg[6]\(10)
    );
\band_pending_reg[6][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(11),
      Q => \band_pending_reg[6]\(11)
    );
\band_pending_reg[6][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(12),
      Q => \band_pending_reg[6]\(12)
    );
\band_pending_reg[6][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(13),
      Q => \band_pending_reg[6]\(13)
    );
\band_pending_reg[6][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(14),
      Q => \band_pending_reg[6]\(14)
    );
\band_pending_reg[6][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(15),
      Q => \band_pending_reg[6]\(15)
    );
\band_pending_reg[6][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(16),
      Q => \band_pending_reg[6]\(16)
    );
\band_pending_reg[6][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(17),
      Q => \band_pending_reg[6]\(17)
    );
\band_pending_reg[6][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(18),
      Q => \band_pending_reg[6]\(18)
    );
\band_pending_reg[6][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(19),
      Q => \band_pending_reg[6]\(19)
    );
\band_pending_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(1),
      Q => \band_pending_reg[6]\(1)
    );
\band_pending_reg[6][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(20),
      Q => \band_pending_reg[6]\(20)
    );
\band_pending_reg[6][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(21),
      Q => \band_pending_reg[6]\(21)
    );
\band_pending_reg[6][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(22),
      Q => \band_pending_reg[6]\(22)
    );
\band_pending_reg[6][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(23),
      Q => \band_pending_reg[6]\(23)
    );
\band_pending_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(2),
      Q => \band_pending_reg[6]\(2)
    );
\band_pending_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(3),
      Q => \band_pending_reg[6]\(3)
    );
\band_pending_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(4),
      Q => \band_pending_reg[6]\(4)
    );
\band_pending_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(5),
      Q => \band_pending_reg[6]\(5)
    );
\band_pending_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(6),
      Q => \band_pending_reg[6]\(6)
    );
\band_pending_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(7),
      Q => \band_pending_reg[6]\(7)
    );
\band_pending_reg[6][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(8),
      Q => \band_pending_reg[6]\(8)
    );
\band_pending_reg[6][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => low_gamma(9),
      Q => \band_pending_reg[6]\(9)
    );
\band_pending_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(0),
      Q => \band_pending_reg[7]\(0)
    );
\band_pending_reg[7][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(10),
      Q => \band_pending_reg[7]\(10)
    );
\band_pending_reg[7][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(11),
      Q => \band_pending_reg[7]\(11)
    );
\band_pending_reg[7][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(12),
      Q => \band_pending_reg[7]\(12)
    );
\band_pending_reg[7][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(13),
      Q => \band_pending_reg[7]\(13)
    );
\band_pending_reg[7][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(14),
      Q => \band_pending_reg[7]\(14)
    );
\band_pending_reg[7][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(15),
      Q => \band_pending_reg[7]\(15)
    );
\band_pending_reg[7][16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(16),
      Q => \band_pending_reg[7]\(16)
    );
\band_pending_reg[7][17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(17),
      Q => \band_pending_reg[7]\(17)
    );
\band_pending_reg[7][18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(18),
      Q => \band_pending_reg[7]\(18)
    );
\band_pending_reg[7][19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(19),
      Q => \band_pending_reg[7]\(19)
    );
\band_pending_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(1),
      Q => \band_pending_reg[7]\(1)
    );
\band_pending_reg[7][20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(20),
      Q => \band_pending_reg[7]\(20)
    );
\band_pending_reg[7][21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(21),
      Q => \band_pending_reg[7]\(21)
    );
\band_pending_reg[7][22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(22),
      Q => \band_pending_reg[7]\(22)
    );
\band_pending_reg[7][23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(23),
      Q => \band_pending_reg[7]\(23)
    );
\band_pending_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(2),
      Q => \band_pending_reg[7]\(2)
    );
\band_pending_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(3),
      Q => \band_pending_reg[7]\(3)
    );
\band_pending_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(4),
      Q => \band_pending_reg[7]\(4)
    );
\band_pending_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(5),
      Q => \band_pending_reg[7]\(5)
    );
\band_pending_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(6),
      Q => \band_pending_reg[7]\(6)
    );
\band_pending_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(7),
      Q => \band_pending_reg[7]\(7)
    );
\band_pending_reg[7][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(8),
      Q => \band_pending_reg[7]\(8)
    );
\band_pending_reg[7][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => middle_gamma(9),
      Q => \band_pending_reg[7]\(9)
    );
band_pending_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[12]\,
      I1 => ila_big_packet_valid,
      I2 => ila_band_pending_valid,
      O => band_pending_valid_i_1_n_0
    );
band_pending_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \bram_addr[10]_i_3_n_0\,
      D => band_pending_valid_i_1_n_0,
      Q => ila_band_pending_valid
    );
\bram_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \bram_addr[0]_i_2_n_0\,
      O => \bram_addr[0]_i_1_n_0\
    );
\bram_addr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => ila_write_seq(0),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[10]\,
      I3 => \FSM_onehot_state_reg_n_0_[12]\,
      I4 => \FSM_onehot_state_reg_n_0_[8]\,
      I5 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \bram_addr[0]_i_2_n_0\
    );
\bram_addr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bram_addr[10]_i_4_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bram_addr[10]_i_1_n_0\
    );
\bram_addr[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => ila_write_seq(8),
      I1 => ila_write_seq(9),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \bram_addr[10]_i_4_n_0\,
      O => \bram_addr[10]_i_2_n_0\
    );
\bram_addr[10]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \bram_addr[10]_i_3_n_0\
    );
\bram_addr[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => write_seq,
      I2 => \bram_addr[10]_i_5_n_0\,
      I3 => ila_state(3),
      O => \bram_addr[10]_i_4_n_0\
    );
\bram_addr[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \bram_addr[10]_i_5_n_0\
    );
\bram_addr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => ila_write_seq(1),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \bram_addr[1]_i_2_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \bram_addr[1]_i_1_n_0\
    );
\bram_addr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[10]\,
      O => \bram_addr[1]_i_2_n_0\
    );
\bram_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => ila_write_seq(2),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \bram_addr[2]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \bram_addr[2]_i_1_n_0\
    );
\bram_addr[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_state_reg_n_0_[8]\,
      O => \bram_addr[2]_i_2_n_0\
    );
\bram_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[11]\,
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => ila_write_seq(3),
      O => \bram_addr[3]_i_1_n_0\
    );
\bram_addr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => ila_write_seq(4),
      O => \bram_addr[4]_i_1_n_0\
    );
\bram_addr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => ila_write_seq(5),
      O => \bram_addr[5]_i_1_n_0\
    );
\bram_addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => ila_write_seq(6),
      O => \bram_addr[6]_i_1_n_0\
    );
\bram_addr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => ila_write_seq(7),
      O => \bram_addr[7]_i_1_n_0\
    );
\bram_addr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ila_write_seq(8),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \bram_addr[10]_i_4_n_0\,
      O => \bram_addr[8]_i_1_n_0\
    );
\bram_addr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => ila_write_seq(8),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => ila_write_seq(9),
      O => \bram_addr[9]_i_1_n_0\
    );
\bram_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[0]_i_1_n_0\,
      Q => ila_bram_addr(0)
    );
\bram_addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[10]_i_2_n_0\,
      Q => ila_bram_addr(10)
    );
\bram_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[1]_i_1_n_0\,
      Q => ila_bram_addr(1)
    );
\bram_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[2]_i_1_n_0\,
      Q => ila_bram_addr(2)
    );
\bram_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[3]_i_1_n_0\,
      Q => ila_bram_addr(3)
    );
\bram_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[4]_i_1_n_0\,
      Q => ila_bram_addr(4)
    );
\bram_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[5]_i_1_n_0\,
      Q => ila_bram_addr(5)
    );
\bram_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[6]_i_1_n_0\,
      Q => ila_bram_addr(6)
    );
\bram_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[7]_i_1_n_0\,
      Q => ila_bram_addr(7)
    );
\bram_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[8]_i_1_n_0\,
      Q => ila_bram_addr(8)
    );
\bram_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[9]_i_1_n_0\,
      Q => ila_bram_addr(9)
    );
\bram_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \bram_data[0]_i_2_n_0\,
      I1 => \bram_data[0]_i_3_n_0\,
      I2 => \bram_data[0]_i_4_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => raw_pending(0),
      I5 => \bram_data[0]_i_5_n_0\,
      O => \bram_data[0]_i_1_n_0\
    );
\bram_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(0),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(0),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(0),
      O => \bram_data[0]_i_2_n_0\
    );
\bram_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(0),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(0),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(0),
      O => \bram_data[0]_i_3_n_0\
    );
\bram_data[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ila_write_seq(0),
      I1 => write_seq,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \bram_data[0]_i_4_n_0\
    );
\bram_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => status_seq_reg(0),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(0),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(0),
      O => \bram_data[0]_i_5_n_0\
    );
\bram_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[10]_i_2_n_0\,
      I1 => \bram_data[10]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(10),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[10]_i_4_n_0\,
      O => \bram_data[10]_i_1_n_0\
    );
\bram_data[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(10),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(10),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(10),
      O => \bram_data[10]_i_2_n_0\
    );
\bram_data[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(10),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(10),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(10),
      O => \bram_data[10]_i_3_n_0\
    );
\bram_data[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(10),
      I2 => \bram_data[10]_i_5_n_0\,
      O => \bram_data[10]_i_4_n_0\
    );
\bram_data[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => quality_pending(2),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(10),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(10),
      O => \bram_data[10]_i_5_n_0\
    );
\bram_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[11]_i_2_n_0\,
      I1 => \bram_data[11]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(11),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[11]_i_4_n_0\,
      O => \bram_data[11]_i_1_n_0\
    );
\bram_data[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(11),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(11),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(11),
      O => \bram_data[11]_i_2_n_0\
    );
\bram_data[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(11),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(11),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(11),
      O => \bram_data[11]_i_3_n_0\
    );
\bram_data[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(11),
      I2 => \bram_data[11]_i_5_n_0\,
      O => \bram_data[11]_i_4_n_0\
    );
\bram_data[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => quality_pending(3),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(11),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(11),
      O => \bram_data[11]_i_5_n_0\
    );
\bram_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[12]_i_2_n_0\,
      I1 => \bram_data[12]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(12),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[12]_i_5_n_0\,
      O => \bram_data[12]_i_1_n_0\
    );
\bram_data[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(12),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(12),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(12),
      O => \bram_data[12]_i_2_n_0\
    );
\bram_data[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(12),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(12),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(12),
      O => \bram_data[12]_i_3_n_0\
    );
\bram_data[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(12),
      I2 => \bram_data[12]_i_6_n_0\,
      O => \bram_data[12]_i_5_n_0\
    );
\bram_data[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => quality_pending(4),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(12),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(12),
      O => \bram_data[12]_i_6_n_0\
    );
\bram_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[13]_i_2_n_0\,
      I1 => \bram_data[13]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(13),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[13]_i_4_n_0\,
      O => \bram_data[13]_i_1_n_0\
    );
\bram_data[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(13),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(13),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(13),
      O => \bram_data[13]_i_2_n_0\
    );
\bram_data[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(13),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(13),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(13),
      O => \bram_data[13]_i_3_n_0\
    );
\bram_data[13]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(13),
      I2 => \bram_data[13]_i_5_n_0\,
      O => \bram_data[13]_i_4_n_0\
    );
\bram_data[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => quality_pending(5),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(13),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(13),
      O => \bram_data[13]_i_5_n_0\
    );
\bram_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[14]_i_2_n_0\,
      I1 => \bram_data[14]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(14),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[14]_i_4_n_0\,
      O => \bram_data[14]_i_1_n_0\
    );
\bram_data[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(14),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(14),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(14),
      O => \bram_data[14]_i_2_n_0\
    );
\bram_data[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(14),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(14),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(14),
      O => \bram_data[14]_i_3_n_0\
    );
\bram_data[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(14),
      I2 => \bram_data[14]_i_5_n_0\,
      O => \bram_data[14]_i_4_n_0\
    );
\bram_data[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => quality_pending(6),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(14),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(14),
      O => \bram_data[14]_i_5_n_0\
    );
\bram_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \bram_data[15]_i_2_n_0\,
      I1 => write_seq,
      I2 => p_9_in(15),
      I3 => \bram_data[15]_i_4_n_0\,
      I4 => \bram_data[15]_i_5_n_0\,
      I5 => \bram_data[15]_i_6_n_0\,
      O => \bram_data[15]_i_1_n_0\
    );
\bram_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(15),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(15),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(15),
      O => \bram_data[15]_i_2_n_0\
    );
\bram_data[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(15),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \bram_data[15]_i_4_n_0\
    );
\bram_data[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => quality_pending(7),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(15),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(15),
      O => \bram_data[15]_i_5_n_0\
    );
\bram_data[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(15),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(15),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(15),
      O => \bram_data[15]_i_6_n_0\
    );
\bram_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[16]_i_2_n_0\,
      I1 => \bram_data[16]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[16]_i_4_n_0\,
      O => \bram_data[16]_i_1_n_0\
    );
\bram_data[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(16),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(16),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(16),
      O => \bram_data[16]_i_2_n_0\
    );
\bram_data[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(16),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(16),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(16),
      O => \bram_data[16]_i_3_n_0\
    );
\bram_data[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => med_pending(0),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(16),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(16),
      O => \bram_data[16]_i_4_n_0\
    );
\bram_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[17]_i_2_n_0\,
      I1 => \bram_data[17]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[17]_i_4_n_0\,
      O => \bram_data[17]_i_1_n_0\
    );
\bram_data[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(17),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(17),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(17),
      O => \bram_data[17]_i_2_n_0\
    );
\bram_data[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(17),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(17),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(17),
      O => \bram_data[17]_i_3_n_0\
    );
\bram_data[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => med_pending(1),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(17),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(17),
      O => \bram_data[17]_i_4_n_0\
    );
\bram_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[18]_i_2_n_0\,
      I1 => \bram_data[18]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[18]_i_4_n_0\,
      O => \bram_data[18]_i_1_n_0\
    );
\bram_data[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(18),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(18),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(18),
      O => \bram_data[18]_i_2_n_0\
    );
\bram_data[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(18),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(18),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(18),
      O => \bram_data[18]_i_3_n_0\
    );
\bram_data[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => med_pending(2),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(18),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(18),
      O => \bram_data[18]_i_4_n_0\
    );
\bram_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[19]_i_2_n_0\,
      I1 => \bram_data[19]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[19]_i_4_n_0\,
      O => \bram_data[19]_i_1_n_0\
    );
\bram_data[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(19),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(19),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(19),
      O => \bram_data[19]_i_2_n_0\
    );
\bram_data[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(19),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(19),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(19),
      O => \bram_data[19]_i_3_n_0\
    );
\bram_data[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => med_pending(3),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(19),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(19),
      O => \bram_data[19]_i_4_n_0\
    );
\bram_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[1]_i_2_n_0\,
      I1 => \bram_data[1]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(1),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[1]_i_4_n_0\,
      O => \bram_data[1]_i_1_n_0\
    );
\bram_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(1),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(1),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(1),
      O => \bram_data[1]_i_2_n_0\
    );
\bram_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(1),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(1),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(1),
      O => \bram_data[1]_i_3_n_0\
    );
\bram_data[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(1),
      I2 => \bram_data[1]_i_5_n_0\,
      O => \bram_data[1]_i_4_n_0\
    );
\bram_data[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => status_seq_reg(1),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(1),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(1),
      O => \bram_data[1]_i_5_n_0\
    );
\bram_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[20]_i_2_n_0\,
      I1 => \bram_data[20]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[20]_i_4_n_0\,
      O => \bram_data[20]_i_1_n_0\
    );
\bram_data[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(20),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(20),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(20),
      O => \bram_data[20]_i_2_n_0\
    );
\bram_data[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(20),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(20),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(20),
      O => \bram_data[20]_i_3_n_0\
    );
\bram_data[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => med_pending(4),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(20),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(20),
      O => \bram_data[20]_i_4_n_0\
    );
\bram_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[21]_i_2_n_0\,
      I1 => \bram_data[21]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[21]_i_4_n_0\,
      O => \bram_data[21]_i_1_n_0\
    );
\bram_data[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(21),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(21),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(21),
      O => \bram_data[21]_i_2_n_0\
    );
\bram_data[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(21),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(21),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(21),
      O => \bram_data[21]_i_3_n_0\
    );
\bram_data[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => med_pending(5),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(21),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(21),
      O => \bram_data[21]_i_4_n_0\
    );
\bram_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[22]_i_2_n_0\,
      I1 => \bram_data[22]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[22]_i_4_n_0\,
      O => \bram_data[22]_i_1_n_0\
    );
\bram_data[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(22),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(22),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(22),
      O => \bram_data[22]_i_2_n_0\
    );
\bram_data[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(22),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(22),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(22),
      O => \bram_data[22]_i_3_n_0\
    );
\bram_data[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => med_pending(6),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(22),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(22),
      O => \bram_data[22]_i_4_n_0\
    );
\bram_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[23]_i_2_n_0\,
      I1 => \bram_data[23]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[23]_i_4_n_0\,
      O => \bram_data[23]_i_1_n_0\
    );
\bram_data[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(23),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(23),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(23),
      O => \bram_data[23]_i_2_n_0\
    );
\bram_data[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(23),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(23),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(23),
      O => \bram_data[23]_i_3_n_0\
    );
\bram_data[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => med_pending(7),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(23),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(23),
      O => \bram_data[23]_i_4_n_0\
    );
\bram_data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[12]\,
      I1 => att_pending(0),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bram_data[24]_i_1_n_0\
    );
\bram_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[12]\,
      I1 => att_pending(1),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bram_data[25]_i_1_n_0\
    );
\bram_data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[12]\,
      I1 => att_pending(2),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bram_data[26]_i_1_n_0\
    );
\bram_data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[12]\,
      I1 => att_pending(3),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bram_data[27]_i_1_n_0\
    );
\bram_data[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[12]\,
      I1 => att_pending(4),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bram_data[28]_i_1_n_0\
    );
\bram_data[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[12]\,
      I1 => att_pending(5),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bram_data[29]_i_1_n_0\
    );
\bram_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[2]_i_2_n_0\,
      I1 => \bram_data[2]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(2),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[2]_i_4_n_0\,
      O => \bram_data[2]_i_1_n_0\
    );
\bram_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(2),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(2),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(2),
      O => \bram_data[2]_i_2_n_0\
    );
\bram_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(2),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(2),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(2),
      O => \bram_data[2]_i_3_n_0\
    );
\bram_data[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(2),
      I2 => \bram_data[2]_i_5_n_0\,
      O => \bram_data[2]_i_4_n_0\
    );
\bram_data[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => status_seq_reg(2),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(2),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(2),
      O => \bram_data[2]_i_5_n_0\
    );
\bram_data[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[12]\,
      I1 => att_pending(6),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bram_data[30]_i_1_n_0\
    );
\bram_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[12]\,
      I1 => att_pending(7),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => raw_pending(15),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \bram_data[31]_i_1_n_0\
    );
\bram_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[3]_i_2_n_0\,
      I1 => \bram_data[3]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(3),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[3]_i_4_n_0\,
      O => \bram_data[3]_i_1_n_0\
    );
\bram_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(3),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(3),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(3),
      O => \bram_data[3]_i_2_n_0\
    );
\bram_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(3),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(3),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(3),
      O => \bram_data[3]_i_3_n_0\
    );
\bram_data[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(3),
      I2 => \bram_data[3]_i_5_n_0\,
      O => \bram_data[3]_i_4_n_0\
    );
\bram_data[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => status_seq_reg(3),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(3),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(3),
      O => \bram_data[3]_i_5_n_0\
    );
\bram_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[4]_i_2_n_0\,
      I1 => \bram_data[4]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(4),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[4]_i_5_n_0\,
      O => \bram_data[4]_i_1_n_0\
    );
\bram_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(4),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(4),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(4),
      O => \bram_data[4]_i_2_n_0\
    );
\bram_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(4),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(4),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(4),
      O => \bram_data[4]_i_3_n_0\
    );
\bram_data[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(4),
      I2 => \bram_data[4]_i_6_n_0\,
      O => \bram_data[4]_i_5_n_0\
    );
\bram_data[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => status_seq_reg(4),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(4),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(4),
      O => \bram_data[4]_i_6_n_0\
    );
\bram_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[5]_i_2_n_0\,
      I1 => \bram_data[5]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(5),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[5]_i_4_n_0\,
      O => \bram_data[5]_i_1_n_0\
    );
\bram_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(5),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(5),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(5),
      O => \bram_data[5]_i_2_n_0\
    );
\bram_data[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(5),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(5),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(5),
      O => \bram_data[5]_i_3_n_0\
    );
\bram_data[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(5),
      I2 => \bram_data[5]_i_5_n_0\,
      O => \bram_data[5]_i_4_n_0\
    );
\bram_data[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => status_seq_reg(5),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(5),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(5),
      O => \bram_data[5]_i_5_n_0\
    );
\bram_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[6]_i_2_n_0\,
      I1 => \bram_data[6]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(6),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[6]_i_4_n_0\,
      O => \bram_data[6]_i_1_n_0\
    );
\bram_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(6),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(6),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(6),
      O => \bram_data[6]_i_2_n_0\
    );
\bram_data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(6),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(6),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(6),
      O => \bram_data[6]_i_3_n_0\
    );
\bram_data[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(6),
      I2 => \bram_data[6]_i_5_n_0\,
      O => \bram_data[6]_i_4_n_0\
    );
\bram_data[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => status_seq_reg(6),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(6),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(6),
      O => \bram_data[6]_i_5_n_0\
    );
\bram_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[7]_i_2_n_0\,
      I1 => \bram_data[7]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(7),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[7]_i_4_n_0\,
      O => \bram_data[7]_i_1_n_0\
    );
\bram_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(7),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(7),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(7),
      O => \bram_data[7]_i_2_n_0\
    );
\bram_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(7),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(7),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(7),
      O => \bram_data[7]_i_3_n_0\
    );
\bram_data[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(7),
      I2 => \bram_data[7]_i_5_n_0\,
      O => \bram_data[7]_i_4_n_0\
    );
\bram_data[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => status_seq_reg(7),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(7),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(7),
      O => \bram_data[7]_i_5_n_0\
    );
\bram_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[8]_i_2_n_0\,
      I1 => \bram_data[8]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(8),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[8]_i_5_n_0\,
      O => \bram_data[8]_i_1_n_0\
    );
\bram_data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(8),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(8),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(8),
      O => \bram_data[8]_i_2_n_0\
    );
\bram_data[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(8),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(8),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(8),
      O => \bram_data[8]_i_3_n_0\
    );
\bram_data[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(8),
      I2 => \bram_data[8]_i_6_n_0\,
      O => \bram_data[8]_i_5_n_0\
    );
\bram_data[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => quality_pending(0),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(8),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(8),
      O => \bram_data[8]_i_6_n_0\
    );
\bram_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \bram_data[9]_i_2_n_0\,
      I1 => \bram_data[9]_i_3_n_0\,
      I2 => write_seq,
      I3 => p_9_in(9),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \bram_data[9]_i_4_n_0\,
      O => \bram_data[9]_i_1_n_0\
    );
\bram_data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[5]\(9),
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \band_pending_reg[4]\(9),
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \band_pending_reg[3]\(9),
      O => \bram_data[9]_i_2_n_0\
    );
\bram_data[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \band_pending_reg[2]\(9),
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \band_pending_reg[1]\(9),
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \band_pending_reg[0]\(9),
      O => \bram_data[9]_i_3_n_0\
    );
\bram_data[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => raw_pending(9),
      I2 => \bram_data[9]_i_5_n_0\,
      O => \bram_data[9]_i_4_n_0\
    );
\bram_data[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => quality_pending(1),
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \band_pending_reg[7]\(9),
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      I5 => \band_pending_reg[6]\(9),
      O => \bram_data[9]_i_5_n_0\
    );
\bram_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[0]_i_1_n_0\,
      Q => ila_bram_data(0)
    );
\bram_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[10]_i_1_n_0\,
      Q => ila_bram_data(10)
    );
\bram_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[11]_i_1_n_0\,
      Q => ila_bram_data(11)
    );
\bram_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[12]_i_1_n_0\,
      Q => ila_bram_data(12)
    );
\bram_data_reg[12]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_data_reg[8]_i_4_n_0\,
      CO(3) => \bram_data_reg[12]_i_4_n_0\,
      CO(2) => \bram_data_reg[12]_i_4_n_1\,
      CO(1) => \bram_data_reg[12]_i_4_n_2\,
      CO(0) => \bram_data_reg[12]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_9_in(12 downto 9),
      S(3 downto 0) => ila_write_seq(12 downto 9)
    );
\bram_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[13]_i_1_n_0\,
      Q => ila_bram_data(13)
    );
\bram_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[14]_i_1_n_0\,
      Q => ila_bram_data(14)
    );
\bram_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[15]_i_1_n_0\,
      Q => ila_bram_data(15)
    );
\bram_data_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_data_reg[12]_i_4_n_0\,
      CO(3 downto 2) => \NLW_bram_data_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bram_data_reg[15]_i_3_n_2\,
      CO(0) => \bram_data_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bram_data_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => p_9_in(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => ila_write_seq(15 downto 13)
    );
\bram_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[16]_i_1_n_0\,
      Q => ila_bram_data(16)
    );
\bram_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[17]_i_1_n_0\,
      Q => ila_bram_data(17)
    );
\bram_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[18]_i_1_n_0\,
      Q => ila_bram_data(18)
    );
\bram_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[19]_i_1_n_0\,
      Q => ila_bram_data(19)
    );
\bram_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[1]_i_1_n_0\,
      Q => ila_bram_data(1)
    );
\bram_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[20]_i_1_n_0\,
      Q => ila_bram_data(20)
    );
\bram_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[21]_i_1_n_0\,
      Q => ila_bram_data(21)
    );
\bram_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[22]_i_1_n_0\,
      Q => ila_bram_data(22)
    );
\bram_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[23]_i_1_n_0\,
      Q => ila_bram_data(23)
    );
\bram_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[24]_i_1_n_0\,
      Q => ila_bram_data(24)
    );
\bram_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[25]_i_1_n_0\,
      Q => ila_bram_data(25)
    );
\bram_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[26]_i_1_n_0\,
      Q => ila_bram_data(26)
    );
\bram_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[27]_i_1_n_0\,
      Q => ila_bram_data(27)
    );
\bram_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[28]_i_1_n_0\,
      Q => ila_bram_data(28)
    );
\bram_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[29]_i_1_n_0\,
      Q => ila_bram_data(29)
    );
\bram_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[2]_i_1_n_0\,
      Q => ila_bram_data(2)
    );
\bram_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[30]_i_1_n_0\,
      Q => ila_bram_data(30)
    );
\bram_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[31]_i_1_n_0\,
      Q => ila_bram_data(31)
    );
\bram_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[3]_i_1_n_0\,
      Q => ila_bram_data(3)
    );
\bram_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[4]_i_1_n_0\,
      Q => ila_bram_data(4)
    );
\bram_data_reg[4]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bram_data_reg[4]_i_4_n_0\,
      CO(2) => \bram_data_reg[4]_i_4_n_1\,
      CO(1) => \bram_data_reg[4]_i_4_n_2\,
      CO(0) => \bram_data_reg[4]_i_4_n_3\,
      CYINIT => ila_write_seq(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_9_in(4 downto 1),
      S(3 downto 0) => ila_write_seq(4 downto 1)
    );
\bram_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[5]_i_1_n_0\,
      Q => ila_bram_data(5)
    );
\bram_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[6]_i_1_n_0\,
      Q => ila_bram_data(6)
    );
\bram_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[7]_i_1_n_0\,
      Q => ila_bram_data(7)
    );
\bram_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[8]_i_1_n_0\,
      Q => ila_bram_data(8)
    );
\bram_data_reg[8]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_data_reg[4]_i_4_n_0\,
      CO(3) => \bram_data_reg[8]_i_4_n_0\,
      CO(2) => \bram_data_reg[8]_i_4_n_1\,
      CO(1) => \bram_data_reg[8]_i_4_n_2\,
      CO(0) => \bram_data_reg[8]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_9_in(8 downto 5),
      S(3 downto 0) => ila_write_seq(8 downto 5)
    );
\bram_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bram_addr[10]_i_1_n_0\,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_data[9]_i_1_n_0\,
      Q => ila_bram_data(9)
    );
\bram_we_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \bram_addr[10]_i_1_n_0\,
      Q => ila_bram_we(0)
    );
ila_bram_we_inst: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ila_bram_we(0),
      O => ila_bram_we(3)
    );
\ila_bram_we_inst__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ila_bram_we(0),
      O => ila_bram_we(2)
    );
\ila_bram_we_inst__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ila_bram_we(0),
      O => ila_bram_we(1)
    );
ila_state_inferred_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_state_reg_n_0_[10]\,
      I3 => \FSM_onehot_state_reg_n_0_[12]\,
      I4 => \FSM_onehot_state_reg_n_0_[11]\,
      O => ila_state(3)
    );
ila_state_inferred_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[12]\,
      O => ila_state(2)
    );
ila_state_inferred_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[10]\,
      I2 => \FSM_onehot_state_reg_n_0_[11]\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => write_seq,
      O => ila_state(1)
    );
ila_state_inferred_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_state_reg_n_0_[11]\,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_state_reg_n_0_[7]\,
      I4 => write_seq,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => ila_state(0)
    );
\med_pending_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => meditation(0),
      Q => med_pending(0)
    );
\med_pending_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => meditation(1),
      Q => med_pending(1)
    );
\med_pending_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => meditation(2),
      Q => med_pending(2)
    );
\med_pending_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => meditation(3),
      Q => med_pending(3)
    );
\med_pending_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => meditation(4),
      Q => med_pending(4)
    );
\med_pending_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => meditation(5),
      Q => med_pending(5)
    );
\med_pending_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => meditation(6),
      Q => med_pending(6)
    );
\med_pending_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => meditation(7),
      Q => med_pending(7)
    );
\quality_pending_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => signal_quality(0),
      Q => quality_pending(0)
    );
\quality_pending_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => signal_quality(1),
      Q => quality_pending(1)
    );
\quality_pending_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => signal_quality(2),
      Q => quality_pending(2)
    );
\quality_pending_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => signal_quality(3),
      Q => quality_pending(3)
    );
\quality_pending_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => signal_quality(4),
      Q => quality_pending(4)
    );
\quality_pending_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => signal_quality(5),
      Q => quality_pending(5)
    );
\quality_pending_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => signal_quality(6),
      Q => quality_pending(6)
    );
\quality_pending_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => signal_quality(7),
      Q => quality_pending(7)
    );
\raw_pending_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(0),
      Q => raw_pending(0)
    );
\raw_pending_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(10),
      Q => raw_pending(10)
    );
\raw_pending_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(11),
      Q => raw_pending(11)
    );
\raw_pending_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(12),
      Q => raw_pending(12)
    );
\raw_pending_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(13),
      Q => raw_pending(13)
    );
\raw_pending_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(14),
      Q => raw_pending(14)
    );
\raw_pending_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(15),
      Q => raw_pending(15)
    );
\raw_pending_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(1),
      Q => raw_pending(1)
    );
\raw_pending_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(2),
      Q => raw_pending(2)
    );
\raw_pending_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(3),
      Q => raw_pending(3)
    );
\raw_pending_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(4),
      Q => raw_pending(4)
    );
\raw_pending_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(5),
      Q => raw_pending(5)
    );
\raw_pending_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(6),
      Q => raw_pending(6)
    );
\raw_pending_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(7),
      Q => raw_pending(7)
    );
\raw_pending_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(8),
      Q => raw_pending(8)
    );
\raw_pending_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_rawdata_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => ila_rawdata(9),
      Q => raw_pending(9)
    );
raw_pending_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => ila_rawdata_valid,
      I2 => ila_raw_pending_valid,
      O => raw_pending_valid_i_1_n_0
    );
raw_pending_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \bram_addr[10]_i_3_n_0\,
      D => raw_pending_valid_i_1_n_0,
      Q => ila_raw_pending_valid
    );
\status_seq[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => status_seq_reg(0),
      O => p_0_in(0)
    );
\status_seq[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => status_seq_reg(0),
      I1 => status_seq_reg(1),
      O => p_0_in(1)
    );
\status_seq[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => status_seq_reg(1),
      I1 => status_seq_reg(0),
      I2 => status_seq_reg(2),
      O => p_0_in(2)
    );
\status_seq[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => status_seq_reg(2),
      I1 => status_seq_reg(0),
      I2 => status_seq_reg(1),
      I3 => status_seq_reg(3),
      O => p_0_in(3)
    );
\status_seq[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => status_seq_reg(3),
      I1 => status_seq_reg(1),
      I2 => status_seq_reg(0),
      I3 => status_seq_reg(2),
      I4 => status_seq_reg(4),
      O => p_0_in(4)
    );
\status_seq[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => status_seq_reg(4),
      I1 => status_seq_reg(2),
      I2 => status_seq_reg(0),
      I3 => status_seq_reg(1),
      I4 => status_seq_reg(3),
      I5 => status_seq_reg(5),
      O => p_0_in(5)
    );
\status_seq[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \status_seq[7]_i_2_n_0\,
      I1 => status_seq_reg(6),
      O => p_0_in(6)
    );
\status_seq[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => status_seq_reg(6),
      I1 => \status_seq[7]_i_2_n_0\,
      I2 => status_seq_reg(7),
      O => p_0_in(7)
    );
\status_seq[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => status_seq_reg(4),
      I1 => status_seq_reg(2),
      I2 => status_seq_reg(0),
      I3 => status_seq_reg(1),
      I4 => status_seq_reg(3),
      I5 => status_seq_reg(5),
      O => \status_seq[7]_i_2_n_0\
    );
\status_seq_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => p_0_in(0),
      Q => status_seq_reg(0)
    );
\status_seq_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => p_0_in(1),
      Q => status_seq_reg(1)
    );
\status_seq_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => p_0_in(2),
      Q => status_seq_reg(2)
    );
\status_seq_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => p_0_in(3),
      Q => status_seq_reg(3)
    );
\status_seq_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => p_0_in(4),
      Q => status_seq_reg(4)
    );
\status_seq_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => p_0_in(5),
      Q => status_seq_reg(5)
    );
\status_seq_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => p_0_in(6),
      Q => status_seq_reg(6)
    );
\status_seq_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ila_big_packet_valid,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => p_0_in(7),
      Q => status_seq_reg(7)
    );
u_tgam_parser: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tgam_parser
     port map (
      attention(7 downto 0) => attention(7 downto 0),
      big_packet_valid => ila_big_packet_valid,
      clk => clk,
      delta(23 downto 0) => delta(23 downto 0),
      high_alpha(23 downto 0) => high_alpha(23 downto 0),
      high_beta(23 downto 0) => high_beta(23 downto 0),
      low_alpha(23 downto 0) => low_alpha(23 downto 0),
      low_beta(23 downto 0) => low_beta(23 downto 0),
      low_gamma(23 downto 0) => low_gamma(23 downto 0),
      meditation(7 downto 0) => meditation(7 downto 0),
      middle_gamma(23 downto 0) => middle_gamma(23 downto 0),
      rawdata(15 downto 0) => ila_rawdata(15 downto 0),
      rawdata_valid => ila_rawdata_valid,
      rst_n => rst_n,
      rx_byte(7 downto 0) => ila_rx_byte(7 downto 0),
      rx_valid => ila_rx_valid,
      signal_quality(7 downto 0) => signal_quality(7 downto 0),
      theta(23 downto 0) => theta(23 downto 0)
    );
u_uart_rx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
     port map (
      clk => clk,
      data(7 downto 0) => ila_rx_byte(7 downto 0),
      rst_n => rst_n,
      rx => uart_rx,
      valid => ila_rx_valid
    );
\write_seq[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ila_write_seq(0),
      O => p_9_in(0)
    );
\write_seq_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[0]_i_1_n_7\,
      Q => ila_write_seq(0)
    );
\write_seq_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \write_seq_reg[0]_i_1_n_0\,
      CO(2) => \write_seq_reg[0]_i_1_n_1\,
      CO(1) => \write_seq_reg[0]_i_1_n_2\,
      CO(0) => \write_seq_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \write_seq_reg[0]_i_1_n_4\,
      O(2) => \write_seq_reg[0]_i_1_n_5\,
      O(1) => \write_seq_reg[0]_i_1_n_6\,
      O(0) => \write_seq_reg[0]_i_1_n_7\,
      S(3 downto 1) => ila_write_seq(3 downto 1),
      S(0) => p_9_in(0)
    );
\write_seq_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[8]_i_1_n_5\,
      Q => ila_write_seq(10)
    );
\write_seq_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[8]_i_1_n_4\,
      Q => ila_write_seq(11)
    );
\write_seq_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[12]_i_1_n_7\,
      Q => ila_write_seq(12)
    );
\write_seq_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_seq_reg[8]_i_1_n_0\,
      CO(3) => \NLW_write_seq_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \write_seq_reg[12]_i_1_n_1\,
      CO(1) => \write_seq_reg[12]_i_1_n_2\,
      CO(0) => \write_seq_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_seq_reg[12]_i_1_n_4\,
      O(2) => \write_seq_reg[12]_i_1_n_5\,
      O(1) => \write_seq_reg[12]_i_1_n_6\,
      O(0) => \write_seq_reg[12]_i_1_n_7\,
      S(3 downto 0) => ila_write_seq(15 downto 12)
    );
\write_seq_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[12]_i_1_n_6\,
      Q => ila_write_seq(13)
    );
\write_seq_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[12]_i_1_n_5\,
      Q => ila_write_seq(14)
    );
\write_seq_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[12]_i_1_n_4\,
      Q => ila_write_seq(15)
    );
\write_seq_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[0]_i_1_n_6\,
      Q => ila_write_seq(1)
    );
\write_seq_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[0]_i_1_n_5\,
      Q => ila_write_seq(2)
    );
\write_seq_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[0]_i_1_n_4\,
      Q => ila_write_seq(3)
    );
\write_seq_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[4]_i_1_n_7\,
      Q => ila_write_seq(4)
    );
\write_seq_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_seq_reg[0]_i_1_n_0\,
      CO(3) => \write_seq_reg[4]_i_1_n_0\,
      CO(2) => \write_seq_reg[4]_i_1_n_1\,
      CO(1) => \write_seq_reg[4]_i_1_n_2\,
      CO(0) => \write_seq_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_seq_reg[4]_i_1_n_4\,
      O(2) => \write_seq_reg[4]_i_1_n_5\,
      O(1) => \write_seq_reg[4]_i_1_n_6\,
      O(0) => \write_seq_reg[4]_i_1_n_7\,
      S(3 downto 0) => ila_write_seq(7 downto 4)
    );
\write_seq_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[4]_i_1_n_6\,
      Q => ila_write_seq(5)
    );
\write_seq_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[4]_i_1_n_5\,
      Q => ila_write_seq(6)
    );
\write_seq_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[4]_i_1_n_4\,
      Q => ila_write_seq(7)
    );
\write_seq_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[8]_i_1_n_7\,
      Q => ila_write_seq(8)
    );
\write_seq_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_seq_reg[4]_i_1_n_0\,
      CO(3) => \write_seq_reg[8]_i_1_n_0\,
      CO(2) => \write_seq_reg[8]_i_1_n_1\,
      CO(1) => \write_seq_reg[8]_i_1_n_2\,
      CO(0) => \write_seq_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_seq_reg[8]_i_1_n_4\,
      O(2) => \write_seq_reg[8]_i_1_n_5\,
      O(1) => \write_seq_reg[8]_i_1_n_6\,
      O(0) => \write_seq_reg[8]_i_1_n_7\,
      S(3 downto 0) => ila_write_seq(11 downto 8)
    );
\write_seq_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => write_seq,
      CLR => \bram_addr[10]_i_3_n_0\,
      D => \write_seq_reg[8]_i_1_n_6\,
      Q => ila_write_seq(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    uart_rx : in STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    td_matrix_ready : out STD_LOGIC;
    fd_matrix_ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SYSTEM_eeg_pl_top_0_1,eeg_pl_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "eeg_pl_top,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^bram_we\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN SYSTEM_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  bram_we(3) <= \^bram_we\(2);
  bram_we(2) <= \^bram_we\(2);
  bram_we(1) <= \^bram_we\(2);
  bram_we(0) <= \^bram_we\(2);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eeg_pl_top
     port map (
      bram_addr(10 downto 0) => bram_addr(10 downto 0),
      bram_data(31 downto 0) => bram_data(31 downto 0),
      bram_we(0) => \^bram_we\(2),
      clk => clk,
      fd_matrix_ready => fd_matrix_ready,
      rst_n => rst_n,
      td_matrix_ready => td_matrix_ready,
      uart_rx => uart_rx
    );
end STRUCTURE;
