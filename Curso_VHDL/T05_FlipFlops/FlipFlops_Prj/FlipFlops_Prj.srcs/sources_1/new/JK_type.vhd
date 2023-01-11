----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 19:57:58
-- Design Name: 
-- Module Name: JK_type - Behavioral
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

entity JK_type is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           CE : in STD_LOGIC;
           J,K : in STD_LOGIC;
           Q : out STD_LOGIC);
end JK_type;

architecture Behavioral of JK_type is

signal D_bus, Q_bus: std_logic;
signal JK : std_logic_vector(1 downto 0);

begin

process (clk)
begin
   if clk'event and clk='1' then
      if rst='1' then
         Q_bus <= '0';
      elsif CE ='1' then
         Q_bus <= D_bus;
      end if;
   end if;
end process;

-- Intermediate step
JK <= J & K;

    with JK select
        D_bus <= Q_bus when "00",
            '0' when "01",
            '1' when "10",
            not(Q_bus) when others;

-- Output logic
Q <= Q_bus;


end Behavioral;
