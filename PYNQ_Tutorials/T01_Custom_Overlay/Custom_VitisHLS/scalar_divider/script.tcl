############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Custom_VitisHLS
set_top divide
add_files Custom_VitisHLS/src/divide.cpp
open_solution "scalar_divider" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -description {scalar divider} -display_name Scalar_Divider -output C:/GitHub/GICM_Xilinx_Tutorial/PYNQ_Tutorials/T01_Custom_Overlay/RTL_scalar_divider -vendor Fabian -version 1.0.1
#source "./Custom_VitisHLS/scalar_divider/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output C:/GitHub/GICM_Xilinx_Tutorial/PYNQ_Tutorials/T01_Custom_Overlay/RTL_scalar_divider
