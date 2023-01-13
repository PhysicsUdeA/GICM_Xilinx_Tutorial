############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LedsVitis
set_top ledsPrj
add_files LedsVitis/src/LedsPrj.cpp
open_solution "LedsVitis" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -description {Leds Control} -display_name LedsPrj -format ip_catalog -output C:/GitHub/GICM_Xilinx_Tutorial/PYNQ_Tutorials/T02_Overlay_Combinational/RTL_Leds -rtl verilog -vendor Fabian -version 1.0.3
#source "./LedsVitis/LedsVitis/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output C:/GitHub/GICM_Xilinx_Tutorial/PYNQ_Tutorials/T02_Overlay_Combinational/RTL_Leds
