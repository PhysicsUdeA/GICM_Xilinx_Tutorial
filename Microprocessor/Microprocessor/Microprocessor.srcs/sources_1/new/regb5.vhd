
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity regb5 is
    Port (
            clk       : in  std_logic;
            datain    : in  std_logic_vector (3 downto 0);
            cs        : in  std_logic_vector (4 downto 0);
            rst       : in  std_logic;
            b         : out std_logic_vector (3 downto 0)            
         );
end regb5;

architecture Behavioral of regb5 is
    signal b_inter    : std_logic_vector (3 downto 0);
begin

    process (clk, cs, rst)
    variable bres : std_logic_vector (3 downto 0); 
    begin
        if rst = '1' then
            b_inter <= "0000";
        else
            if (rising_edge(clk)) then
                case cs is
                    when  "10010"  =>  
                        b_inter <= datain;
                    when  "11100"  =>
                        bres := b_inter;
                    when  "11101"  => 
                        b_inter <= bres;
                    when others    =>  
                        null;
                end case;
            end if;
        end if;    
    end process;
    
    b <= b_inter;

end Behavioral;