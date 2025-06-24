
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity ProgramCounter is
    Port (
            clk       : in  std_logic;
            pcontrol  : in  std_logic_vector (7 downto 0);
            cs        : in  std_logic_vector (4 downto 0);
            rst       : in  std_logic;
            pila      : in  std_logic_vector (7 downto 0);
            pcout     : out std_logic_vector (7 downto 0)            
         );
end ProgramCounter;

architecture Behavioral of ProgramCounter is
    signal pc_inter   : std_logic_vector (7 downto 0);
begin

    process (clk, cs, rst)
    begin
        if rst = '1' then
            pc_inter <= "00000000";
        else
            if (rising_edge(clk)) then
                case cs is
                    when "11110"  =>  pc_inter  <=  pcontrol;
                    when "11111"  =>  pc_inter  <=  conv_std_logic_vector(conv_integer(unsigned(pc_inter)) + 1, 8);
                    when "11101"  =>  pc_inter  <=  pila;
                    when others   =>  null;
                end case;
            end if;
        end if;
    end process;

    pcout <= pc_inter;

end Behavioral;
