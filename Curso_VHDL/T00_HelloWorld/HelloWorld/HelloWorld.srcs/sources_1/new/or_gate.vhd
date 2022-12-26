----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 10:15:02
-- Design Name: 
-- Module Name: or_gate - Behavioral
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


entity or_gate is
  Port ( in_1  : in  std_logic;
         in_2  : in  std_logic;
         out_1 : out std_logic);
end or_gate;

architecture Behavioral of or_gate is

begin

out_1 <= in_1 or in_2;

end Behavioral;
