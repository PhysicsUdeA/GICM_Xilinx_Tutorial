
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity stack is
    Port (
            clk       : in  std_logic;
            pcout     : in  std_logic_vector (7 downto 0);
            cs        : in  std_logic_vector (4 downto 0);
            rst       : in  std_logic;
            pila      : out std_logic_vector (7 downto 0)            
         );
end stack;

architecture Behavioral of stack is
    signal pila_inter : std_logic_vector (7 downto 0);
begin

    process (clk, cs, rst)
    -- variable q : std_logic_vector (7 downto 0); 
    begin
        if rst = '1' then
            pila_inter <= "00000000";
        else
            if (rising_edge(clk)) then
                case cs is
                    when  "11100"  =>  pila_inter  <= pcout;
                    when others    =>  null;
                end case;
            end if;
        end if;    
    end process;
    
    pila <= pila_inter;

end Behavioral;