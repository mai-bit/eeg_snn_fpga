-makelib ies_lib/xilinx_vip -sv \
  "D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/zdyz/vivado/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "D:/zdyz/vivado/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/zdyz/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/zdyz/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_8 -sv \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_10 -sv \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SYSTEM/ip/SYSTEM_processing_system7_0_0/sim/SYSTEM_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SYSTEM/ip/SYSTEM_blk_mem_gen_0_0/sim/SYSTEM_blk_mem_gen_0_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_24 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SYSTEM/ip/SYSTEM_axi_gpio_0_0/sim/SYSTEM_axi_gpio_0_0.vhd" \
-endlib
-makelib ies_lib/xlconstant_v1_1_7 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SYSTEM/ip/SYSTEM_xlconstant_0_0/sim/SYSTEM_xlconstant_0_0.v" \
-endlib
-makelib ies_lib/xlconcat_v2_1_4 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SYSTEM/ip/SYSTEM_xlconcat_0_0/sim/SYSTEM_xlconcat_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_22 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_21 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_23 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SYSTEM/ip/SYSTEM_xbar_0/sim/SYSTEM_xbar_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SYSTEM/ip/SYSTEM_rst_ps7_0_100M_0/sim/SYSTEM_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib ies_lib/axi_bram_ctrl_v4_1_4 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/c9f0/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SYSTEM/ip/SYSTEM_axi_bram_ctrl_0_0/sim/SYSTEM_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SYSTEM/ip/SYSTEM_eeg_pl_top_0_1/sim/SYSTEM_eeg_pl_top_0_1.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_22 \
  "../../../../eeg_pl_top.gen/sources_1/bd/SYSTEM/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/SYSTEM/ip/SYSTEM_auto_pc_1/sim/SYSTEM_auto_pc_1.v" \
  "../../../bd/SYSTEM/ip/SYSTEM_auto_pc_0/sim/SYSTEM_auto_pc_0.v" \
  "../../../bd/SYSTEM/sim/SYSTEM.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

