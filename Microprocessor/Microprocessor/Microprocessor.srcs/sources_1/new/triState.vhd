
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity triState is
    Port (
            clk       : in  std_logic;
            oper      : in  std_logic_vector (3 downto 0);
            cs        : in  std_logic_vector (4 downto 0);
            dataout   : out std_logic_vector (3 downto 0)            
         );
end triState;

architecture Behavioral of triState is
    signal dataout_inter    : std_logic_vector (3 downto 0);
begin

    process (clk, cs) 
    begin
        if (rising_edge(clk)) then
            case cs is
                when "11000"  => dataout_inter  <= oper;
                when others   => dataout_inter  <= "ZZZZ";
            end case;
        end if;
    end process;
    
    dataout <= dataout_inter;

end Behavioral;