-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Dec 26 11:07:41 2022
-- Host        : fabiancastano running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GICM_Xilinx_Tutorial/Curso_VHDL/T00_HelloWorld/HelloWorld/HelloWorld.gen/sources_1/bd/design_1/ip/design_1_or_gate_0_0/design_1_or_gate_0_0_sim_netlist.vhdl
-- Design      : design_1_or_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_or_gate_0_0 is
  port (
    in_1 : in STD_LOGIC;
    in_2 : in STD_LOGIC;
    out_1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_or_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_or_gate_0_0 : entity is "design_1_or_gate_0_0,or_gate,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_or_gate_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_or_gate_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_or_gate_0_0 : entity is "or_gate,Vivado 2022.2";
end design_1_or_gate_0_0;

architecture STRUCTURE of design_1_or_gate_0_0 is
begin
out_1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => in_1,
      I1 => in_2,
      O => out_1
    );
end STRUCTURE;
