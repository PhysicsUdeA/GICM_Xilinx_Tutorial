----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 20:10:54
-- Design Name: 
-- Module Name: sequent_file - Behavioral
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

entity sequent_file is
    Port ( clk   : in  std_logic;
           rst  : in  std_logic;
           out_1 : out std_logic_vector(3 downto 0));
end sequent_file;

architecture Behavioral of sequent_file is

signal D_bus, Q_bus : std_logic_vector (3 downto 0):=(others => '0');

begin

-- State register

process (clk)
begin
    if clk'event and clk='1' then
        if rst = '1' then
            Q_bus <= (others => '0');
        else
            Q_bus <= D_bus;
        end if;
    end if;
end process;


-- next state logic

D_bus <= (others => '0') when Q_bus = "011" else
         Q_bus + '1';


-- output logic

out_1 <= Q_bus;


end Behavioral;
