vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_8
vlib modelsim_lib/msim/processing_system7_vip_v1_0_10
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_24
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/xlconcat_v2_1_4
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_22
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_21
vlib modelsim_lib/msim/axi_crossbar_v2_1_23
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_4
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_22

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 modelsim_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 modelsim_lib/msim/processing_system7_vip_v1_0_10
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 modelsim_lib/msim/axi_gpio_v2_0_24
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 modelsim_lib/msim/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 modelsim_lib/msim/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 modelsim_lib/msim/axi_crossbar_v2_1_23
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_bram_ctrl_v4_1_4 modelsim_lib/msim/axi_bram_ctrl_v4_1_4
vmap axi_protocol_converter_v2_1_22 modelsim_lib/msim/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip  -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"D:/zdyz/vivado/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/zdyz/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/zdyz/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/SYSTEM/ip/SYSTEM_processing_system7_0_0/sim/SYSTEM_processing_system7_0_0.v" \

vlog -work blk_mem_gen_v8_4_4  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/SYSTEM/ip/SYSTEM_blk_mem_gen_0_0/sim/SYSTEM_blk_mem_gen_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24  -93 \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/SYSTEM/ip/SYSTEM_axi_gpio_0_0/sim/SYSTEM_axi_gpio_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/SYSTEM/ip/SYSTEM_xlconstant_0_0/sim/SYSTEM_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_4  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/SYSTEM/ip/SYSTEM_xlconcat_0_0/sim/SYSTEM_xlconcat_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/SYSTEM/ip/SYSTEM_xbar_0/sim/SYSTEM_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/SYSTEM/ip/SYSTEM_rst_ps7_0_100M_0/sim/SYSTEM_rst_ps7_0_100M_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_4  -93 \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/c9f0/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/SYSTEM/ip/SYSTEM_axi_bram_ctrl_0_0/sim/SYSTEM_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/SYSTEM/ip/SYSTEM_eeg_pl_top_0_1/sim/SYSTEM_eeg_pl_top_0_1.v" \

vlog -work axi_protocol_converter_v2_1_22  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl" "+incdir+../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl" "+incdir+D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/SYSTEM/ip/SYSTEM_auto_pc_1/sim/SYSTEM_auto_pc_1.v" \
"../../../bd/SYSTEM/ip/SYSTEM_auto_pc_0/sim/SYSTEM_auto_pc_0.v" \
"../../../bd/SYSTEM/sim/SYSTEM.v" \

vlog -work xil_defaultlib \
"glbl.v"

