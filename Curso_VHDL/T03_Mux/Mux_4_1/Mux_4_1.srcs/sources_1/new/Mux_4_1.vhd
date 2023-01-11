----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 15:17:20
-- Design Name: 
-- Module Name: Mux_4_1 - Behavioral
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

entity Mux_4_1 is
    Port ( I1  : in  STD_LOGIC_VECTOR (7 downto 0);
           I2  : in  STD_LOGIC_VECTOR (7 downto 0);
           I3  : in  STD_LOGIC_VECTOR (7 downto 0);
           I4  : in  STD_LOGIC_VECTOR (7 downto 0);
           E   : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           F   : out STD_LOGIC_VECTOR (7 downto 0));
end Mux_4_1;

architecture Behavioral of Mux_4_1 is

signal F_link : std_logic_vector (7 downto 0);

begin

    with sel select
        F_link <= I1 when "00",
                  I2 when "01",
                  I3 when "10",
                  I4 when others;
             
    with E select
        F <= F_link when '0',
             x"00"  when others;

end Behavioral;
