-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_Led_Ctrl/ipshared/4f3b/hdl/myip_axi_leds_ctrl_v1_0_S00_AXI.vhd" \
  "../../../bd/design_Led_Ctrl/ipshared/4f3b/hdl/myip_axi_leds_ctrl_v1_0.vhd" \
  "../../../bd/design_Led_Ctrl/ip/design_Led_Ctrl_myip_axi_leds_ctrl_0_0/sim/design_Led_Ctrl_myip_axi_leds_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_15 -sv \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_Led_Ctrl/ip/design_Led_Ctrl_processing_system7_0_0/sim/design_Led_Ctrl_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_Led_Ctrl/ip/design_Led_Ctrl_rst_ps7_0_100M_0/sim/design_Led_Ctrl_rst_ps7_0_100M_0.vhd" \
  "../../../bd/design_Led_Ctrl/ip/design_Led_Ctrl_leds_ctrl_0_0/sim/design_Led_Ctrl_leds_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_Led_Ctrl/ip/design_Led_Ctrl_auto_pc_0/sim/design_Led_Ctrl_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_Led_Ctrl/sim/design_Led_Ctrl.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

