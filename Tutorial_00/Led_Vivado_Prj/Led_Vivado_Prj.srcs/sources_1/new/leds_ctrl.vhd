----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.12.2022 23:26:34
-- Design Name: 
-- Module Name: leds_ctrl - Behavioral
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

entity leds_ctrl is
  Port (sw_0  : in  std_logic_vector (1 downto 0);
        led_0 : out std_logic_vector (3 downto 0));
end leds_ctrl;

architecture Behavioral of leds_ctrl is

begin

led_0 <= x"F" when sw_0 = "00" else
         x"7" when sw_0 = "01" else
         x"3" when sw_0 = "10" else
         x"1";

end Behavioral;
