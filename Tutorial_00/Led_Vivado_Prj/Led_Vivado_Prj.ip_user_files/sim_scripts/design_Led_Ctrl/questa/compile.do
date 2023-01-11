vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_13
vlib questa_lib/msim/processing_system7_vip_v1_0_15
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_7
vlib questa_lib/msim/axi_data_fifo_v2_1_26
vlib questa_lib/msim/axi_register_slice_v2_1_27
vlib questa_lib/msim/axi_protocol_converter_v2_1_27

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 questa_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 questa_lib/msim/processing_system7_vip_v1_0_15
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 questa_lib/msim/axi_data_fifo_v2_1_26
vmap axi_register_slice_v2_1_27 questa_lib/msim/axi_register_slice_v2_1_27
vmap axi_protocol_converter_v2_1_27 questa_lib/msim/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_Led_Ctrl/ipshared/4f3b/hdl/myip_axi_leds_ctrl_v1_0_S00_AXI.vhd" \
"../../../bd/design_Led_Ctrl/ipshared/4f3b/hdl/myip_axi_leds_ctrl_v1_0.vhd" \
"../../../bd/design_Led_Ctrl/ip/design_Led_Ctrl_myip_axi_leds_ctrl_0_0/sim/design_Led_Ctrl_myip_axi_leds_ctrl_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_Led_Ctrl/ip/design_Led_Ctrl_processing_system7_0_0/sim/design_Led_Ctrl_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_Led_Ctrl/ip/design_Led_Ctrl_rst_ps7_0_100M_0/sim/design_Led_Ctrl_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_Led_Ctrl/ip/design_Led_Ctrl_leds_ctrl_0_0/sim/design_Led_Ctrl_leds_ctrl_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ec67/hdl" "+incdir+../../../../Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_Led_Ctrl/ip/design_Led_Ctrl_auto_pc_0/sim/design_Led_Ctrl_auto_pc_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_Led_Ctrl/sim/design_Led_Ctrl.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

