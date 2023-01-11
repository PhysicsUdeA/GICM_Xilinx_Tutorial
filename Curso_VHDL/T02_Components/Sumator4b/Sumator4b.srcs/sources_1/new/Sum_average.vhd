----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 13:04:05
-- Design Name: 
-- Module Name: Sum_average - Behavioral
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

entity Sum_average is
    Port ( A    : in  STD_LOGIC;
           B    : in  STD_LOGIC;
           Sum  : out STD_LOGIC;
           Cout : out STD_LOGIC);
end Sum_average;

architecture Behavioral of Sum_average is

begin

    Cout <= A and B;
    Sum  <= A xor B;

end Behavioral;
