
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity indice is
    Port (
            clk       : in  std_logic;
            pcontrol  : in  std_logic_vector (7 downto 0);
            cs        : in  std_logic_vector (4 downto 0);
            rst       : in  std_logic;
            ix        : out std_logic_vector (7 downto 0)            
         );
end indice;

architecture Behavioral of indice is
    signal ix_inter   : std_logic_vector (7 downto 0);
begin

    process (clk, cs, rst)
    begin
        if rst = '1' then
            ix_inter <= "00000000";
        else
            if (rising_edge(clk)) then
                case cs is
                    when  "11010"  =>  ix_inter  <= pcontrol;
                    when  "11011"  =>  ix_inter  <= conv_std_logic_vector(conv_integer(unsigned(ix_inter)) + 1, 8);
                    when others    =>  null;
                end case;
            end if;
        end if;    
    end process;
    
    ix <= ix_inter;

end Behavioral;

