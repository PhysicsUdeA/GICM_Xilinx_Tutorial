
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity dirValRegister is
    Port (
            vma       : out  std_logic;
            cs        : in  std_logic_vector (4 downto 0)          
         );
end dirValRegister;

architecture Behavioral of dirValRegister is
begin

    process (cs) 
    begin
        vma <= (not(cs(3)) and cs(2) and cs(1) and not (cs(0))) or (cs(3) and not (cs(2)) and not(cs(1)) and not(cs(0)));
    end process;

end Behavioral;