----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 19:11:05
-- Design Name: 
-- Module Name: D_type - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity D_type is
    Port ( clk : in  std_logic;
           rst : in  std_logic;
           D   : in  std_logic;
           CE  : in  std_logic;
           Q   : out std_logic);
end D_type;

architecture Behavioral of D_type is

begin

process (clk)
begin
   if clk'event and clk='1' then
      if rst='1' then
         Q <= '0';
      elsif CE ='1' then
         Q <= D;
      end if;
   end if;
end process;



end Behavioral;
