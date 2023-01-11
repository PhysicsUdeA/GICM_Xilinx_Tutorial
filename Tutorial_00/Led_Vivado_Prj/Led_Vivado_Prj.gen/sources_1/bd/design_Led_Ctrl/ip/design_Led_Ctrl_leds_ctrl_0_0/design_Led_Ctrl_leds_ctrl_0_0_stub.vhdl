-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Dec 21 23:53:57 2022
-- Host        : fabiancastano running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GICM_Xilinx_Tutorial/Tutorial_00/Led_Vivado_Prj/Led_Vivado_Prj.gen/sources_1/bd/design_Led_Ctrl/ip/design_Led_Ctrl_leds_ctrl_0_0/design_Led_Ctrl_leds_ctrl_0_0_stub.vhdl
-- Design      : design_Led_Ctrl_leds_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_Led_Ctrl_leds_ctrl_0_0 is
  Port ( 
    sw_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    led_0 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_Led_Ctrl_leds_ctrl_0_0;

architecture stub of design_Led_Ctrl_leds_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sw_0[1:0],led_0[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "leds_ctrl,Vivado 2022.2";
begin
end;
