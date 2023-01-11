----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 15:38:55
-- Design Name: 
-- Module Name: First - Behavioral
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

entity First is
    Port ( sw : in STD_LOGIC_VECTOR (1 downto 0);
           clk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (3 downto 0));
end First;

architecture Behavioral of First is

signal timer: std_logic_vector (27 downto 0);

begin

process (clk) is
begin
    if (rising_edge (clk)) then
        timer <= timer + 1;
    end if; 

end process;


led(0) <= sw(0) and sw(1);
led(1) <= sw(0) xor sw(1);
led(2) <= timer(25);
led(3) <= timer(26);


end Behavioral;
