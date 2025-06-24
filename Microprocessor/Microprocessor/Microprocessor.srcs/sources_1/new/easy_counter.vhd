library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity easy_counter is
    Port (clk     : in  std_logic;
          pout    : inout std_logic );
end easy_counter;

architecture Behavioral of easy_counter is
    
    signal counter : integer := 0;
    
begin

    contar : process (clk)
    begin
    
        if rising_edge(clk) then
            counter <= counter + 1;
            
            if counter = 125000000 then
                counter <= 0;
                pout <= not pout;
            end if;
         end if; 
    
    end process contar;


end Behavioral;
