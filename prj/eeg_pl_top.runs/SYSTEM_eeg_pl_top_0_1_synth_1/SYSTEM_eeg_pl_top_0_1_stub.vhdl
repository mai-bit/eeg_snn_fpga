-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Nov  4 03:03:49 2026
-- Host        : LAPTOP-PNSLBKDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SYSTEM_eeg_pl_top_0_1_stub.vhdl
-- Design      : SYSTEM_eeg_pl_top_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    uart_rx : in STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    td_matrix_ready : out STD_LOGIC;
    fd_matrix_ready : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,uart_rx,bram_addr[10:0],bram_data[31:0],bram_we[3:0],td_matrix_ready,fd_matrix_ready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "eeg_pl_top,Vivado 2020.2";
begin
end;
