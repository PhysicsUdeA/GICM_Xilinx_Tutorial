----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2023 11:57:42
-- Design Name: 
-- Module Name: main - Behavioral
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

entity main is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           JA : in STD_LOGIC_VECTOR (1 downto 0);
           JB : out STD_LOGIC_VECTOR (7 downto 0);
           leds : out STD_LOGIC_VECTOR (3 downto 0));
end main;

architecture Behavioral of main is
-- XADC Instatiation
COMPONENT xadc_wiz_0
  PORT (
    di_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    daddr_in : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    den_in : IN STD_LOGIC;
    dwe_in : IN STD_LOGIC;
    drdy_out : OUT STD_LOGIC;
    do_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    dclk_in : IN STD_LOGIC;
    reset_in : IN STD_LOGIC;
    convst_in : IN STD_LOGIC;
    vp_in : IN STD_LOGIC;
    vn_in : IN STD_LOGIC;
    vauxp9 : IN STD_LOGIC;
    vauxn9 : IN STD_LOGIC;
    channel_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    eoc_out : OUT STD_LOGIC;
    alarm_out : OUT STD_LOGIC;
    eos_out : OUT STD_LOGIC;
    busy_out : OUT STD_LOGIC 
  );
END COMPONENT;

-- FIR Filter component
component FIR_sample is
    Port ( clk : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (11 downto 0);
           data_out : out STD_LOGIC_VECTOR (11 downto 0);
           en : in STD_LOGIC);
end component;

    signal channel_out : std_logic_vector(4 downto 0);
    signal daddr_in    : std_logic_vector(6 downto 0);
    signal eoc_out     : std_logic;
    signal do_out      : std_logic_vector(15 downto 0);
    signal anal_p, anal_n, convst, drdy : std_logic;
    signal count       : integer range 0 to 999;
    signal x, y        : std_logic_vector(11 downto 0);
    
begin

    daddr_in <= "00" & channel_out;
    anal_p <= JA(0);
    anal_n <= JA(1);

your_fir_sample : FIR_sample
  PORT MAP (
    clk => clk,
    data_in => x,
    data_out => y,
    en => eoc_out
  );
  

your_xadc : xadc_wiz_0
  PORT MAP (
    di_in => "0000000000000000",
    daddr_in => daddr_in,
    den_in => eoc_out,
    dwe_in => '0',
    drdy_out => drdy,
    do_out => do_out,
    dclk_in => clk,
    reset_in => btn,
    convst_in => convst,
    vp_in => '0',
    vn_in => '0',
    vauxp9 => anal_p,
    vauxn9 => anal_n,
    channel_out => channel_out,
    eoc_out => eoc_out,
    alarm_out => open,
    eos_out => open,
    busy_out => open
  );
  
  -- mapping connections
  x <= not(do_out(15)) & do_out (14 downto 4);
  JB <= not(y(11)) & y(10 downto 4);
  leds <= y(7 downto 4);
  
-- creation of process 1 khz convertion rate
process (clk)
begin
    if clk'event and clk ='1' then
        count <= count + 1;
        convst <= '0';
        if count = 999 then
            count <= 0;
            convst <= '1';
        end if;
    end if;
end process;
  

end Behavioral;
