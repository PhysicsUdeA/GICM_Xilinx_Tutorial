
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity selDataRegister is
    Port (
            clk       : in  std_logic;
            dataout   : in  std_logic_vector (3 downto 0);
            datain    : out std_logic_vector (3 downto 0);
            oper      : in  std_logic_vector (3 downto 0);
            cs        : in  std_logic_vector (4 downto 0)           
         );
end selDataRegister;

architecture Behavioral of selDataRegister is
    signal datain_inter  : std_logic_vector (3 downto 0);
begin

    process (clk, cs)
    begin
        if (rising_edge(clk)) then
            case cs is
                when "10110"  =>  datain_inter  <= dataout;
                when "10101"  =>  datain_inter  <= oper;
                when others   => null;
            end case;
        end if;
    end process;
    
    datain <= datain_inter;

end Behavioral;