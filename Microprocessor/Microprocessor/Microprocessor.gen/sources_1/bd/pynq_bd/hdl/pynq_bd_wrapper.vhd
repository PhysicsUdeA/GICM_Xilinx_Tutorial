--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Wed Dec 25 21:24:09 2024
--Host        : fabiancastano running 64-bit major release  (build 9200)
--Command     : generate_target pynq_bd_wrapper.bd
--Design      : pynq_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_bd_wrapper is
  port (
    irq : in STD_LOGIC_VECTOR ( 1 downto 0 );
    led : inout STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    rw_0 : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
end pynq_bd_wrapper;

architecture STRUCTURE of pynq_bd_wrapper is
  component pynq_bd is
  port (
    sysclk : in STD_LOGIC;
    led : inout STD_LOGIC;
    irq : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset_rtl : in STD_LOGIC;
    rw_0 : out STD_LOGIC
  );
  end component pynq_bd;
begin
pynq_bd_i: component pynq_bd
     port map (
      irq(1 downto 0) => irq(1 downto 0),
      led => led,
      reset_rtl => reset_rtl,
      rw_0 => rw_0,
      sysclk => sysclk
    );
end STRUCTURE;
