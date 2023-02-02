vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_12
vlib modelsim_lib/msim/processing_system7_vip_v1_0_14
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/lib_fifo_v1_0_16
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_28
vlib modelsim_lib/msim/axi_sg_v4_1_15
vlib modelsim_lib/msim/axi_dma_v7_1_27
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_data_fifo_v2_1_25
vlib modelsim_lib/msim/axi_register_slice_v2_1_26
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_26
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_crossbar_v2_1_27
vlib modelsim_lib/msim/axi_clock_converter_v2_1_25
vlib modelsim_lib/msim/blk_mem_gen_v8_4_5
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_26
vlib modelsim_lib/msim/xlconcat_v2_1_4

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 modelsim_lib/msim/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 modelsim_lib/msim/processing_system7_vip_v1_0_14
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 modelsim_lib/msim/lib_fifo_v1_0_16
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_28 modelsim_lib/msim/axi_datamover_v5_1_28
vmap axi_sg_v4_1_15 modelsim_lib/msim/axi_sg_v4_1_15
vmap axi_dma_v7_1_27 modelsim_lib/msim/axi_dma_v7_1_27
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_25 modelsim_lib/msim/axi_data_fifo_v2_1_25
vmap axi_register_slice_v2_1_26 modelsim_lib/msim/axi_register_slice_v2_1_26
vmap axi_protocol_converter_v2_1_26 modelsim_lib/msim/axi_protocol_converter_v2_1_26
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_crossbar_v2_1_27 modelsim_lib/msim/axi_crossbar_v2_1_27
vmap axi_clock_converter_v2_1_25 modelsim_lib/msim/axi_clock_converter_v2_1_25
vmap blk_mem_gen_v8_4_5 modelsim_lib/msim/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_26 modelsim_lib/msim/axi_dwidth_converter_v2_1_26
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_DMA/ip/design_DMA_processing_system7_0_0/sim/design_DMA_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93 \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16  -93 \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93 \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_28  -93 \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15  -93 \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_27  -93 \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/7b0b/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_DMA/ip/design_DMA_axi_dma_0_0/sim/design_DMA_axi_dma_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_26  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_DMA/ip/design_DMA_auto_pc_0/sim/design_DMA_auto_pc_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_DMA/ip/design_DMA_rst_ps7_0_100M_0/sim/design_DMA_rst_ps7_0_100M_0.vhd" \

vlog -work axi_crossbar_v2_1_27  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_DMA/ip/design_DMA_xbar_0/sim/design_DMA_xbar_0.v" \

vlog -work axi_clock_converter_v2_1_25  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/e893/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_26  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/b3c7/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_DMA/ip/design_DMA_auto_us_0/sim/design_DMA_auto_us_0.v" \
"../../../bd/design_DMA/ip/design_DMA_auto_us_1/sim/design_DMA_auto_us_1.v" \
"../../../bd/design_DMA/ip/design_DMA_auto_pc_1/sim/design_DMA_auto_pc_1.v" \

vlog -work xlconcat_v2_1_4  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/ec67/hdl" "+incdir+../../../../DMA_Vivado_Prj.gen/sources_1/bd/design_DMA/ipshared/5765/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_DMA/ip/design_DMA_xlconcat_0_0/sim/design_DMA_xlconcat_0_0.v" \
"../../../bd/design_DMA/sim/design_DMA.v" \

vlog -work xil_defaultlib \
"glbl.v"

