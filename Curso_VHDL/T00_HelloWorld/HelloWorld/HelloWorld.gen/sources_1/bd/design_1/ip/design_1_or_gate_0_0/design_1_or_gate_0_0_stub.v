// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Dec 26 11:07:41 2022
// Host        : fabiancastano running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GICM_Xilinx_Tutorial/Curso_VHDL/T00_HelloWorld/HelloWorld/HelloWorld.gen/sources_1/bd/design_1/ip/design_1_or_gate_0_0/design_1_or_gate_0_0_stub.v
// Design      : design_1_or_gate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "or_gate,Vivado 2022.2" *)
module design_1_or_gate_0_0(in_1, in_2, out_1)
/* synthesis syn_black_box black_box_pad_pin="in_1,in_2,out_1" */;
  input in_1;
  input in_2;
  output out_1;
endmodule
