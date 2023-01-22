----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 18:40:44
-- Design Name: 
-- Module Name: ProcessFile - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.ALL;

entity ProcessFile is
  Port ( E1  : in  std_logic;
         E2  : in  std_logic;
         E3  : in  std_logic;
         E4  : in  std_logic;
         sel : in  std_logic_vector (1 downto 0);
         F   : out std_logic );
end ProcessFile;

architecture Behavioral of ProcessFile is

begin

-- creation of process
process (E1, E2, E3, E4, sel)

begin

--    if sel = "00" then
--        F <= E1;
--    elsif sel = "01" then
--        F <= E2;
--    elsif sel = "10" then
--        F <= E3;
--    else
--        F <= E4;
--    end if;

    
   case sel is
      when "00" =>
         F <= E1;
      when "01" =>
         F <= E2;
      when "10" =>
         F <= E3;
      when "11" =>
         F <= E4;
      when others =>
         F <= '0';
   end case;

end process;

end Behavioral;
