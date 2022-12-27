----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 20:47:10
-- Design Name: 
-- Module Name: Ram1 - Behavioral
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

entity Ram1 is
    Port ( ck : in STD_LOGIC;
           wr : in STD_LOGIC;
           -- addr : in STD_LOGIC_VECTOR (1 downto 0);
           d_in : in STD_LOGIC_VECTOR (3 downto 0);
           d_out : out STD_LOGIC_VECTOR (3 downto 0));
end Ram1;

architecture Behavioral of Ram1 is

-- creation of ram memory, using array
constant bits_dir  : integer := 2;
constant bits_data : integer := 4;

type ram_type is array (2**bits_dir-1 downto 0) of std_logic_vector (bits_data-1 downto 0);
signal my_ram: ram_type;

signal addr: STD_LOGIC_VECTOR (1 downto 0);

begin

-- process of memory
process (ck)
begin
    if (ck'event and ck = '1') then
        if (wr = '1') then
            my_ram(conv_integer(addr)) <= d_in;
        else
            d_out <= my_ram(conv_integer(addr));
        end if;
    end if;
end process;


-- process sum
process (ck)
begin
    if (ck'event and ck = '1') then
        addr <= addr + 1;
    end if;
end process;



end Behavioral;
