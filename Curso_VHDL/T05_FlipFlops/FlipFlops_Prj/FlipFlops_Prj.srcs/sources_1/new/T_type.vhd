----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 19:22:24
-- Design Name: 
-- Module Name: T_type - Behavioral
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

entity T_type is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           T : in STD_LOGIC;
           CE : in STD_LOGIC;
           Q : out STD_LOGIC);
end T_type;

architecture Behavioral of T_type is

signal D_bus, Q_bus: std_logic;

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

-- Logic of the next state
    with T select
        D_bus <= Q_bus when '0',
                 not(Q_bus) when others;
                 
-- output logic
    Q <= Q_bus;





end Behavioral;
