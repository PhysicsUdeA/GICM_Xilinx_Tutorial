-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Dec 26 11:07:41 2022
-- Host        : fabiancastano running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GICM_Xilinx_Tutorial/Curso_VHDL/T00_HelloWorld/HelloWorld/HelloWorld.gen/sources_1/bd/design_1/ip/design_1_or_gate_0_0/design_1_or_gate_0_0_stub.vhdl
-- Design      : design_1_or_gate_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_or_gate_0_0 is
  Port ( 
    in_1 : in STD_LOGIC;
    in_2 : in STD_LOGIC;
    out_1 : out STD_LOGIC
  );

end design_1_or_gate_0_0;

architecture stub of design_1_or_gate_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in_1,in_2,out_1";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "or_gate,Vivado 2022.2";
begin
end;
