
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity alu is
    Port (
            clk       : in  std_logic;
            a, b      : in  std_logic_vector (3 downto 0);
            cs        : in  std_logic_vector (4 downto 0);
            oper      : out std_logic_vector (3 downto 0);
            re        : out std_logic_vector (3 downto 0)                   
         );
end alu;

architecture Behavioral of alu is
    signal oper_inter    : std_logic_vector (3 downto 0);
    signal re_inter      : std_logic_vector (3 downto 0);
    signal cl            : std_logic_vector (3 downto 0);
begin

    process (clk) 
        variable cout    : std_logic; 
    begin
        if (rising_edge(clk)) then
            -- Seleccion de operacion
            case cs is
                when "00001"  => 
                    oper_inter <= conv_std_logic_vector(conv_integer(unsigned(a)) + conv_integer(unsigned(b)), 4);
                    cl(0) <= (a(1) and b(1)) or ((a(0) and b(0)) and (a(1) xor b(1)));
                    cl(1) <= (a(2) and b(2)) or (cl(0) and (a(2) xor b(2)));
                    cout := (a(3) and b(3)) or (cl(1) and (a(3) xor b(3)));
                
                when "00010"  => 
                    oper_inter <= conv_std_logic_vector(conv_integer(unsigned(a)) - conv_integer(unsigned(b)), 4);
                    if (unsigned(a) >= unsigned(b)) then
                        cout := '1';
                        cl(0) <= '1';
                    else
                        cout := '0';
                        cl(0) <= '0';
                    end if;
                    
                when "00011"  =>
                    oper_inter <= (a and b);
                    cout := '0';
                    cl(0) <= '0';
                    
                when "00100"  =>
                    oper_inter <= (a or b);
                    cout := '0';
                    cl(0) <= '0';
                    
                when "00101"  =>
                    oper_inter <= (not a);
                    cout := '0';
                    cl(0) <= '0';
                    
                when "00110"  =>
                    oper_inter <= (a xor b);
                    cout := '0';
                    cl(0) <= '0';
                    
                when "00111"  =>
                    oper_inter <= (a and "1111");
                    cout := '0';
                    cl(0) <= '0';
                    
                when others   =>
                    null;
            end case;
        end if;
        
            re_inter(3) <= cout xor cl(1);  -- sobreflujo
            re_inter(2) <= not(oper_inter(3) or oper_inter(2) or oper_inter(1) or oper_inter(0)); -- Cero
            re_inter(1) <= oper_inter(3); -- Signo
            re_inter(0) <= cout; -- acarreo
                    
    end process;
    
    oper <= oper_inter;
    re   <= re_inter;

end Behavioral;