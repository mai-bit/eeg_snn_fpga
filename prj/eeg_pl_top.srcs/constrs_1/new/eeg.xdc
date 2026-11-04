#========== 外部引脚 ==========
set_property PACKAGE_PIN K14 [get_ports uart_rx_0]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx_0]
set_property PULLUP true [get_ports uart_rx_0]

#========== 异步输入 ==========
set_false_path -from [get_ports uart_rx_0]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list SYSTEM_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {SYSTEM_i/eeg_pl_top_0/inst/ila_rx_byte[0]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rx_byte[1]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rx_byte[2]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rx_byte[3]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rx_byte[4]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rx_byte[5]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rx_byte[6]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rx_byte[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[0]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[1]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[2]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[3]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[4]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[5]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[6]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[7]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[8]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[9]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[10]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[11]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[12]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[13]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[14]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[15]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[16]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[17]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[18]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[19]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[20]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[21]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[22]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[23]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[24]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[25]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[26]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[27]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[28]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[29]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[30]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_data[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 4 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {SYSTEM_i/eeg_pl_top_0/inst/ila_state[0]} {SYSTEM_i/eeg_pl_top_0/inst/ila_state[1]} {SYSTEM_i/eeg_pl_top_0/inst/ila_state[2]} {SYSTEM_i/eeg_pl_top_0/inst/ila_state[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 4 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_we[0]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_we[1]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_we[2]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_we[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 11 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_addr[0]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_addr[1]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_addr[2]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_addr[3]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_addr[4]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_addr[5]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_addr[6]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_addr[7]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_addr[8]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_addr[9]} {SYSTEM_i/eeg_pl_top_0/inst/ila_bram_addr[10]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 16 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[0]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[1]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[2]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[3]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[4]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[5]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[6]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[7]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[8]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[9]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[10]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[11]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[12]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[13]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[14]} {SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 16 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[0]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[1]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[2]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[3]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[4]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[5]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[6]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[7]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[8]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[9]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[10]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[11]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[12]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[13]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[14]} {SYSTEM_i/eeg_pl_top_0/inst/ila_write_seq[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list SYSTEM_i/eeg_pl_top_0/inst/ila_band_pending_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list SYSTEM_i/eeg_pl_top_0/inst/ila_big_packet_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list SYSTEM_i/eeg_pl_top_0/inst/ila_raw_pending_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list SYSTEM_i/eeg_pl_top_0/inst/ila_rawdata_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list SYSTEM_i/eeg_pl_top_0/inst/ila_rx_valid]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
