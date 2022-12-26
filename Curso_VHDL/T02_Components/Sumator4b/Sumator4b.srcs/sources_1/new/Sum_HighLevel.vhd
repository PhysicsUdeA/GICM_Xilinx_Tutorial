----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 13:26:31
-- Design Name: 
-- Module Name: Sum_HighLevel - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sum_HighLevel is
    Port ( In_1 : in STD_LOGIC_VECTOR (3 downto 0);
           In_2 : in STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC;
           Result : out STD_LOGIC_VECTOR (4 downto 0));
end Sum_HighLevel;

architecture Behavioral of Sum_HighLevel is
-- Instatiation of components 
    component sum_average
    port(  A    : in  STD_LOGIC;
           B    : in  STD_LOGIC;
           Sum  : out STD_LOGIC;
           Cout : out STD_LOGIC);
    end component;
    
    component sum_complete
    port(  A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
    end component;
    
signal c1, c2, c3 : std_logic;  -- intermediated signals 

begin

    Inst_sum_average: sum_average
    port map( 
         A    => In_1(0),
         B    => In_2(0),
         Cout => c1,
         Sum  => Result(0)
    );

    Inst_sum_complete1: sum_complete
    port map( 
         A    => In_1(1),
         B    => In_2(1),
         Cin  => c1,
         Cout => c2,
         Sum  => Result(1)
    );
    
    Inst_sum_complete2: sum_complete
    port map( 
         A    => In_1(2),
         B    => In_2(2),
         Cin  => c2,
         Cout => c3,
         Sum  => Result(2)
    );
    
    Inst_sum_complete3: sum_complete
    port map( 
         A    => In_1(3),
         B    => In_2(3),
         Cin  => c3,
         Cout => Cout,
         Sum  => Result(3)
    );   
    

end Behavioral;
