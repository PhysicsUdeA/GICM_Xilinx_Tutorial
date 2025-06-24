
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity rega5 is
    Port (
            clk       : in  std_logic;
            datain    : in  std_logic_vector (3 downto 0);
            cs        : in  std_logic_vector (4 downto 0);
            rst       : in  std_logic;
            a         : out std_logic_vector (3 downto 0)            
         );
end rega5;

architecture Behavioral of rega5 is
    signal a_inter    : std_logic_vector (3 downto 0);
begin

    process (clk, cs, rst)
    variable ares : std_logic_vector (3 downto 0); 
    begin
        if rst = '1' then
            a_inter <= "0000";
        else
            if (rising_edge(clk)) then
                case cs is
                    when  "10001"  =>  
                        a_inter <= datain;
                    when  "11100"  =>
                        ares := a_inter;
                    when  "11101"  => 
                        a_inter <= ares;
                    when others    =>  
                        null;
                end case;
            end if;
        end if;    
    end process;
    
    a <= a_inter;

end Behavioral;