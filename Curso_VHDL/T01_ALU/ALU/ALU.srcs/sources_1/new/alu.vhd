----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 12:01:16
-- Design Name: 
-- Module Name: alu - Behavioral
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

entity alu is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           operation : in STD_LOGIC_VECTOR (2 downto 0);
           result : out STD_LOGIC_VECTOR (7 downto 0));
end alu;

architecture Behavioral of alu is

begin

    with operation select
        result <= A  +  B when "000",
                  A  -  B when "001",
                  A and B when "010",
                  A or  B when "011",
                  A       when "100",
                  B       when "101",
                  not A   when "110",
                  not B   when others;

end Behavioral;
