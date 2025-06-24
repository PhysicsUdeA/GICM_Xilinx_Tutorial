--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Wed Dec 25 21:24:09 2024
--Host        : fabiancastano running 64-bit major release  (build 9200)
--Command     : generate_target pynq_bd.bd
--Design      : pynq_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_bd is
  port (
    irq : in STD_LOGIC_VECTOR ( 1 downto 0 );
    led : inout STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    rw_0 : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of pynq_bd : entity is "pynq_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pynq_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=12,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=10,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of pynq_bd : entity is "pynq_bd.hwdef";
end pynq_bd;

architecture STRUCTURE of pynq_bd is
  component pynq_bd_easy_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    pout : inout STD_LOGIC
  );
  end component pynq_bd_easy_counter_0_0;
  component pynq_bd_alu_0_0 is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    oper : out STD_LOGIC_VECTOR ( 3 downto 0 );
    re : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component pynq_bd_alu_0_0;
  component pynq_bd_rega5_0_0 is
  port (
    clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst : in STD_LOGIC;
    a : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component pynq_bd_rega5_0_0;
  component pynq_bd_regb5_0_0 is
  port (
    clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst : in STD_LOGIC;
    b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component pynq_bd_regb5_0_0;
  component pynq_bd_selDataRegister_0_0 is
  port (
    clk : in STD_LOGIC;
    dataout : in STD_LOGIC_VECTOR ( 3 downto 0 );
    datain : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oper : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cs : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component pynq_bd_selDataRegister_0_0;
  component pynq_bd_triState_0_0 is
  port (
    clk : in STD_LOGIC;
    oper : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component pynq_bd_triState_0_0;
  component pynq_bd_ProgramCounter_0_0 is
  port (
    clk : in STD_LOGIC;
    pcontrol : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst : in STD_LOGIC;
    pila : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component pynq_bd_ProgramCounter_0_0;
  component pynq_bd_stack_0_0 is
  port (
    clk : in STD_LOGIC;
    pcout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst : in STD_LOGIC;
    pila : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component pynq_bd_stack_0_0;
  component pynq_bd_indice_0_0 is
  port (
    clk : in STD_LOGIC;
    pcontrol : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst : in STD_LOGIC;
    ix : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component pynq_bd_indice_0_0;
  component pynq_bd_selDirRegister_0_0 is
  port (
    clk : in STD_LOGIC;
    pcout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ix : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dir : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cs : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component pynq_bd_selDirRegister_0_0;
  component pynq_bd_control_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    irq : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rw : out STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcontrol : out STD_LOGIC_VECTOR ( 7 downto 0 );
    re : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcout : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cs : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component pynq_bd_control_0_0;
  component pynq_bd_dirValRegister_0_0 is
  port (
    vma : out STD_LOGIC;
    cs : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component pynq_bd_dirValRegister_0_0;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ProgramCounter_0_pcout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal alu_0_oper : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal alu_0_re : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal control_0_pcontrol : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal control_0_rw : STD_LOGIC;
  signal indice_0_ix : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal irq_0_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rega5_0_a : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regb5_0_b : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_sysclk_100M_peripheral_aresetn : STD_LOGIC;
  signal selDataRegister_0_datain : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stack_0_pila : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal triState_0_dataout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dirValRegister_0_vma_UNCONNECTED : STD_LOGIC;
  signal NLW_selDirRegister_0_dir_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_rtl : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_rtl : signal is "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sysclk : signal is "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK";
  attribute X_INTERFACE_PARAMETER of sysclk : signal is "XIL_INTERFACENAME CLK.SYSCLK, ASSOCIATED_RESET reset_rtl, CLK_DOMAIN pynq_bd_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.IRQ INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME INTR.IRQ, PortWidth 2, SENSITIVITY LEVEL_HIGH";
begin
  clk_0_1 <= sysclk;
  irq_0_1(1 downto 0) <= irq(1 downto 0);
  rst_sysclk_100M_peripheral_aresetn <= reset_rtl;
  rw_0 <= control_0_rw;
ProgramCounter_0: component pynq_bd_ProgramCounter_0_0
     port map (
      clk => clk_0_1,
      cs(4 downto 0) => Net1(4 downto 0),
      pcontrol(7 downto 0) => control_0_pcontrol(7 downto 0),
      pcout(7 downto 0) => ProgramCounter_0_pcout(7 downto 0),
      pila(7 downto 0) => stack_0_pila(7 downto 0),
      rst => rst_sysclk_100M_peripheral_aresetn
    );
alu_0: component pynq_bd_alu_0_0
     port map (
      a(3 downto 0) => rega5_0_a(3 downto 0),
      b(3 downto 0) => regb5_0_b(3 downto 0),
      clk => clk_0_1,
      cs(4 downto 0) => Net1(4 downto 0),
      oper(3 downto 0) => alu_0_oper(3 downto 0),
      re(3 downto 0) => alu_0_re(3 downto 0)
    );
control_0: component pynq_bd_control_0_0
     port map (
      clk => clk_0_1,
      cs(4 downto 0) => Net1(4 downto 0),
      datain(3 downto 0) => selDataRegister_0_datain(3 downto 0),
      irq(1 downto 0) => irq_0_1(1 downto 0),
      pcontrol(7 downto 0) => control_0_pcontrol(7 downto 0),
      pcout(3 downto 0) => ProgramCounter_0_pcout(3 downto 0),
      re(3 downto 0) => alu_0_re(3 downto 0),
      rst => rst_sysclk_100M_peripheral_aresetn,
      rw => control_0_rw
    );
dirValRegister_0: component pynq_bd_dirValRegister_0_0
     port map (
      cs(4 downto 0) => Net1(4 downto 0),
      vma => NLW_dirValRegister_0_vma_UNCONNECTED
    );
easy_counter_0: component pynq_bd_easy_counter_0_0
     port map (
      clk => clk_0_1,
      pout => led
    );
indice_0: component pynq_bd_indice_0_0
     port map (
      clk => clk_0_1,
      cs(4 downto 0) => Net1(4 downto 0),
      ix(7 downto 0) => indice_0_ix(7 downto 0),
      pcontrol(7 downto 0) => control_0_pcontrol(7 downto 0),
      rst => rst_sysclk_100M_peripheral_aresetn
    );
rega5_0: component pynq_bd_rega5_0_0
     port map (
      a(3 downto 0) => rega5_0_a(3 downto 0),
      clk => clk_0_1,
      cs(4 downto 0) => Net1(4 downto 0),
      datain(3 downto 0) => selDataRegister_0_datain(3 downto 0),
      rst => rst_sysclk_100M_peripheral_aresetn
    );
regb5_0: component pynq_bd_regb5_0_0
     port map (
      b(3 downto 0) => regb5_0_b(3 downto 0),
      clk => clk_0_1,
      cs(4 downto 0) => Net1(4 downto 0),
      datain(3 downto 0) => selDataRegister_0_datain(3 downto 0),
      rst => rst_sysclk_100M_peripheral_aresetn
    );
selDataRegister_0: component pynq_bd_selDataRegister_0_0
     port map (
      clk => clk_0_1,
      cs(4 downto 0) => Net1(4 downto 0),
      datain(3 downto 0) => selDataRegister_0_datain(3 downto 0),
      dataout(3 downto 0) => triState_0_dataout(3 downto 0),
      oper(3 downto 0) => alu_0_oper(3 downto 0)
    );
selDirRegister_0: component pynq_bd_selDirRegister_0_0
     port map (
      clk => clk_0_1,
      cs(4 downto 0) => Net1(4 downto 0),
      dir(7 downto 0) => NLW_selDirRegister_0_dir_UNCONNECTED(7 downto 0),
      ix(7 downto 0) => indice_0_ix(7 downto 0),
      pcout(7 downto 0) => ProgramCounter_0_pcout(7 downto 0)
    );
stack_0: component pynq_bd_stack_0_0
     port map (
      clk => clk_0_1,
      cs(4 downto 0) => Net1(4 downto 0),
      pcout(7 downto 0) => ProgramCounter_0_pcout(7 downto 0),
      pila(7 downto 0) => stack_0_pila(7 downto 0),
      rst => rst_sysclk_100M_peripheral_aresetn
    );
triState_0: component pynq_bd_triState_0_0
     port map (
      clk => clk_0_1,
      cs(4 downto 0) => Net1(4 downto 0),
      dataout(3 downto 0) => triState_0_dataout(3 downto 0),
      oper(3 downto 0) => alu_0_oper(3 downto 0)
    );
end STRUCTURE;
