
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity control is
    Port (
            clk       : in  std_logic;
            rst       : in  std_logic;
            irq       : in  std_logic_vector (1 downto 0);
            rw        : out std_logic;
            datain    : in  std_logic_vector (3 downto 0);
            pcontrol  : out std_logic_vector (7 downto 0);
            re        : in  std_logic_vector (3 downto 0);
            
            pcout     : in  std_logic_vector (3 downto 0);
            cs        : out std_logic_vector (4 downto 0)                  
         );
end control;

architecture Behavioral of control is
    type estados is (d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17);
    
    signal edo_presente, edo_futuro   : estados;
    signal f                          : std_logic_vector (7 downto 0);

    signal rw_inter          : std_logic;
    signal pcontrol_inter    : std_logic_vector (7 downto 0);
    signal cs_inter          : std_logic_vector (4 downto 0); 

begin

    proceso1: process (edo_presente, irq, rst)        
    begin
        if rst = '1' then
            edo_futuro <= d0;
            pcontrol_inter <= "11111111";
            rw_inter <= '0';
            cs_inter <= "11110";
        else
            case edo_presente is
                when d0  =>
                    if irq = "10" then
                        cs_inter <= "11100";
                        edo_futuro <= d1;
                    elsif irq = "01" then
                        cs_inter <= "11100";
                        edo_futuro <= d1;
                    else 
                        cs_inter <= "11111";
                        edo_futuro <= d3;
                    end if;
                when d1  =>
                    if irq = "10" then
                        pcontrol_inter <= "01000000";
                        edo_futuro <= d1;
                    elsif irq = "01" then
                        pcontrol_inter <= "10000000";
                        edo_futuro <= d1;
                    else 
                        cs_inter <= "11110";
                        edo_futuro <= d3;
                    end if;
                when d2  =>
                    cs_inter <= cs_inter;
                    edo_futuro <= d5;
                when d3  =>
                    cs_inter <= "10110";
                    rw_inter <= '1';
                    edo_futuro <= d4;
                when d4  =>
                    rw_inter <= '0';
                    if datain <= "0000" then
                        cs_inter <= "00001";
                        edo_futuro <= d2;
                    elsif datain = "0001" then
                        cs_inter <= "00010";
                        edo_futuro <= d5;
                    elsif datain = "0010" then
                        cs_inter <= "00011";
                        edo_futuro <= d5;                        
                    elsif datain = "0011" then
                        cs_inter <= "00100";
                        edo_futuro <= d5;
                    elsif datain = "0100" then
                        cs_inter <= "00101";
                        edo_futuro <= d5;
                    elsif datain = "0101" then
                        cs_inter <= "00110";
                        edo_futuro <= d5;
                    elsif datain = "0110" then
                        cs_inter <= "11111";
                        edo_futuro <= d6;
                    elsif datain = "0111" then
                        cs_inter <= "11111";
                        edo_futuro <= d7;
                    elsif datain = "1000" then
                        cs_inter <= "11111";
                        edo_futuro <= d8;
                    elsif datain = "1001" then
                        cs_inter <= "00111";
                        edo_futuro <= d9;
                    elsif datain = "1010" then
                        cs_inter <= "11011";
                        edo_futuro <= d0;
                    elsif datain = "1011" then
                        cs_inter <= "11111";
                        if re(0) = '1' then
                            edo_futuro <= d10;
                        else
                            edo_futuro <= d0;
                        end if;
                    elsif datain = "1100" then
                        cs_inter <= "11111";
                        if re(2) = '1' then
                            edo_futuro <= d10;
                        else
                            edo_futuro <= d0;
                        end if;
                    elsif datain = "1101" then
                        cs_inter <= "11111";
                        if re(1) = '1' then
                            edo_futuro <= d10;
                        else
                            edo_futuro <= d0;
                        end if;
                    elsif datain = "1110" then
                        cs_inter <= "11111";
                        if re(3) = '1' then
                            edo_futuro <= d10;
                        else
                            edo_futuro <= d0;
                        end if;
                    else 
                        cs_inter <= "11101";
                        edo_futuro <= d0;
                    end if;
                when d5  => 
                    cs_inter <= "10101";
                    edo_futuro <= d11;
                when d6  =>
                    cs_inter <= "10110";
                    rw_inter <= '1';
                    edo_futuro <= d12;
                when d7  =>
                    cs_inter <= "10110";
                    rw_inter <= '1';
                    edo_futuro <= d11;
                when d8  =>
                    cs_inter <= "10110";
                    rw_inter <= '1';
                    edo_futuro <= d15;
                when d9  =>
                    cs_inter <= "11000";
                    edo_futuro <= d0;
                when d10  =>
                    cs_inter <= "10110";
                    rw_inter <= '1';
                    edo_futuro <= d16;
                when d11  =>
                    cs_inter <= "10001";
                    rw_inter <= '0';
                    edo_futuro <= d0;
                when d12  =>
                    cs_inter <= "11111";
                    rw_inter <= '0';
                    pcontrol_inter(0) <= datain(0);
                    pcontrol_inter(1) <= datain(1);
                    pcontrol_inter(2) <= datain(2);
                    pcontrol_inter(3) <= datain(3);
                    pcontrol_inter(4) <= pcontrol_inter(4);
                    pcontrol_inter(5) <= pcontrol_inter(5);
                    pcontrol_inter(6) <= pcontrol_inter(6);
                    pcontrol_inter(7) <= pcontrol_inter(7);
                    edo_futuro <= d13;
                when d13  =>
                    cs_inter <= "10110";
                    rw_inter <= '1';
                    edo_futuro <= d14;
                when d14  =>
                    cs_inter <= "11010";
                    rw_inter <= '0';
                    pcontrol_inter(0) <= pcontrol_inter(0);
                    pcontrol_inter(1) <= pcontrol_inter(1);
                    pcontrol_inter(2) <= pcontrol_inter(2);
                    pcontrol_inter(3) <= pcontrol_inter(3);
                    pcontrol_inter(4) <= datain(4);
                    pcontrol_inter(5) <= datain(5);
                    pcontrol_inter(6) <= datain(6);
                    pcontrol_inter(7) <= datain(7);
                    edo_futuro <= d0;
                when d15  =>
                    cs_inter <= "10010";
                    rw_inter <= '0';
                    edo_futuro <= d0;
                when d16  =>
                    cs_inter <= "10000";
                    f(0) <= datain(0);
                    f(1) <= datain(1);
                    f(2) <= datain(2);
                    f(3) <= '0';
                    f(4) <= '0';
                    f(5) <= '0';
                    f(6) <= '0';
                    f(7) <= '0';
                    if datain(3) = '0' then 
                        pcontrol_inter <= conv_std_logic_vector(unsigned(pcout) + unsigned(f), 8);
                        edo_futuro <= d17;
                    else
                        pcontrol_inter <= conv_std_logic_vector(unsigned(pcout) - unsigned(f), 8);
                        edo_futuro <= d17;
                    end if;
                when d17  =>
                    cs_inter <= "11110";
                    edo_futuro <= d0;
            end case;
        end if;             
                    
    end process proceso1;
    
    
    proceso2: process(clk, rst)
    begin 
        if (rising_edge(clk)) then
            if rst = '0' then
                edo_presente <= edo_futuro;
            else
                null;
            end if;
        end if;
    end process proceso2;
        
    
    rw        <=  rw_inter;
    pcontrol  <=  pcontrol_inter;
    cs        <=  cs_inter;

end Behavioral;