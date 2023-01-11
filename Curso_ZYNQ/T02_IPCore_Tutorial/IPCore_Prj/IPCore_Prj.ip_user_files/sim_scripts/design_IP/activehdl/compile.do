vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_13
vlib activehdl/processing_system7_vip_v1_0_15
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_27
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_26
vlib activehdl/axi_crossbar_v2_1_28
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_protocol_converter_v2_1_27

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 activehdl/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 activehdl/processing_system7_vip_v1_0_15
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 activehdl/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 activehdl/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 activehdl/axi_crossbar_v2_1_28
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_27 activehdl/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_IP/ipshared/7766/hdl/IP_Leds_Sw_Ctrl_v1_0_S00_AXI.vhd" \
"../../../bd/design_IP/ipshared/7766/hdl/IP_Leds_Sw_Ctrl_v1_0.vhd" \
"../../../bd/design_IP/ip/design_IP_IP_Leds_Sw_Ctrl_0_0/sim/design_IP_IP_Leds_Sw_Ctrl_0_0.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_IP_xadc_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_IP_xadc_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_IP_xadc_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_IP_xadc_wiz_0_0_family_support.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_IP_xadc_wiz_0_0_family.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_IP_xadc_wiz_0_0_soft_reset.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/design_IP_xadc_wiz_0_0_pselect_f.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_IP_xadc_wiz_0_0_address_decoder.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_IP_xadc_wiz_0_0_slave_attachment.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/design_IP_xadc_wiz_0_0_interrupt_control.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_IP_xadc_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/design_IP_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/design_IP_xadc_wiz_0_0_axi_xadc.vhd" \
"../../../bd/design_IP/ip/design_IP_xadc_wiz_0_0/design_IP_xadc_wiz_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -sv2k12 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_IP/ip/design_IP_processing_system7_0_0/sim/design_IP_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_IP/ip/design_IP_xbar_0/sim/design_IP_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_IP/ip/design_IP_rst_ps7_0_100M_0/sim/design_IP_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_IP/sim/design_IP.vhd" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ec67/hdl" "+incdir+../../../../IPCore_Prj.gen/sources_1/bd/design_IP/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_IP/ip/design_IP_auto_pc_0/sim/design_IP_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

