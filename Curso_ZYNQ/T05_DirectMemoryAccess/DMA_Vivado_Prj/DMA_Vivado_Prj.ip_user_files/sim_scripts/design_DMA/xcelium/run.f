-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_14 -sv \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_DMA/ip/design_DMA_processing_system7_0_0/sim/design_DMA_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_16 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_28 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_15 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_27 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/7b0b/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_DMA/ip/design_DMA_axi_dma_0_0/sim/design_DMA_axi_dma_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_DMA/ip/design_DMA_auto_pc_0/sim/design_DMA_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_DMA/ip/design_DMA_rst_ps7_0_100M_0/sim/design_DMA_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_27 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_DMA/ip/design_DMA_xbar_0/sim/design_DMA_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_25 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/e893/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_26 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/b3c7/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_DMA/ip/design_DMA_auto_us_0/sim/design_DMA_auto_us_0.v" \
  "../../../bd/design_DMA/ip/design_DMA_auto_us_1/sim/design_DMA_auto_us_1.v" \
  "../../../bd/design_DMA/ip/design_DMA_auto_pc_1/sim/design_DMA_auto_pc_1.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_DMA/ip/design_DMA_xlconcat_0_0/sim/design_DMA_xlconcat_0_0.v" \
  "../../../bd/design_DMA/sim/design_DMA.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

