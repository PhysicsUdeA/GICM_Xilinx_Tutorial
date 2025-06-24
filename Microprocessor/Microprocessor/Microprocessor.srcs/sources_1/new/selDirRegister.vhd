
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity selDirRegister is
    Port (
            clk       : in  std_logic;
            pcout     : in  std_logic_vector (7 downto 0);
            ix        : in  std_logic_vector (7 downto 0);
            dir       : out std_logic_vector (7 downto 0);
            cs        : in  std_logic_vector (4 downto 0)         
         );
end selDirRegister;

architecture Behavioral of selDirRegister is
begin

    process (clk, cs) 
    begin
        if (rising_edge(clk)) then
            case cs is
                when "11000"  => dir  <= ix;
                when others   => dir  <= pcout;
            end case;
        end if;
    end process;
    
end Behavioral;