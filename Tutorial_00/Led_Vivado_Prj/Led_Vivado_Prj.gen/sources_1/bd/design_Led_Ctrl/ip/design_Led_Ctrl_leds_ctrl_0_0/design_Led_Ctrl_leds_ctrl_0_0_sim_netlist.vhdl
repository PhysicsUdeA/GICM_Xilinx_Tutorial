-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Dec 21 23:53:57 2022
-- Host        : fabiancastano running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GICM_Xilinx_Tutorial/Tutorial_00/Led_Vivado_Prj/Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ip/design_Led_Ctrl_leds_ctrl_0_0/design_Led_Ctrl_leds_ctrl_0_0_sim_netlist.vhdl
-- Design      : design_Led_Ctrl_leds_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_Led_Ctrl_leds_ctrl_0_0_leds_ctrl is
  port (
    led_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sw_0 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_Led_Ctrl_leds_ctrl_0_0_leds_ctrl : entity is "leds_ctrl";
end design_Led_Ctrl_leds_ctrl_0_0_leds_ctrl;

architecture STRUCTURE of design_Led_Ctrl_leds_ctrl_0_0_leds_ctrl is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_0[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_0[2]_INST_0\ : label is "soft_lutpair0";
begin
\led_0[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sw_0(1),
      I1 => sw_0(0),
      O => led_0(0)
    );
\led_0[2]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw_0(1),
      O => led_0(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_Led_Ctrl_leds_ctrl_0_0 is
  port (
    sw_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    led_0 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_Led_Ctrl_leds_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_Led_Ctrl_leds_ctrl_0_0 : entity is "design_Led_Ctrl_leds_ctrl_0_0,leds_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_Led_Ctrl_leds_ctrl_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_Led_Ctrl_leds_ctrl_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_Led_Ctrl_leds_ctrl_0_0 : entity is "leds_ctrl,Vivado 2022.2";
end design_Led_Ctrl_leds_ctrl_0_0;

architecture STRUCTURE of design_Led_Ctrl_leds_ctrl_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^led_0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  led_0(3 downto 1) <= \^led_0\(3 downto 1);
  led_0(0) <= \<const1>\;
U0: entity work.design_Led_Ctrl_leds_ctrl_0_0_leds_ctrl
     port map (
      led_0(1 downto 0) => \^led_0\(2 downto 1),
      sw_0(1 downto 0) => sw_0(1 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\led_0[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw_0(1),
      I1 => sw_0(0),
      O => \^led_0\(3)
    );
end STRUCTURE;
