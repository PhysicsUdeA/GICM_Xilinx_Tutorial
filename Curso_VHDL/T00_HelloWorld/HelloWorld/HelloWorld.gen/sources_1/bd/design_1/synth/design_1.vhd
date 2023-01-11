--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Mon Dec 26 11:07:06 2022
--Host        : fabiancastano running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    F : out STD_LOGIC;
    in_1 : in STD_LOGIC;
    in_2 : in STD_LOGIC;
    out_1 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_or_gate_0_0 is
  port (
    in_1 : in STD_LOGIC;
    in_2 : in STD_LOGIC;
    out_1 : out STD_LOGIC
  );
  end component design_1_or_gate_0_0;
  component design_1_table1_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    F : out STD_LOGIC
  );
  end component design_1_table1_0_0;
  signal A_0_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal in_1_0_1 : STD_LOGIC;
  signal in_2_0_1 : STD_LOGIC;
  signal or_gate_0_out_1 : STD_LOGIC;
  signal table1_0_F : STD_LOGIC;
begin
  A_0_1(1 downto 0) <= A(1 downto 0);
  F <= table1_0_F;
  in_1_0_1 <= in_1;
  in_2_0_1 <= in_2;
  out_1 <= or_gate_0_out_1;
or_gate_0: component design_1_or_gate_0_0
     port map (
      in_1 => in_1_0_1,
      in_2 => in_2_0_1,
      out_1 => or_gate_0_out_1
    );
table1_0: component design_1_table1_0_0
     port map (
      A(1 downto 0) => A_0_1(1 downto 0),
      F => table1_0_F
    );
end STRUCTURE;
