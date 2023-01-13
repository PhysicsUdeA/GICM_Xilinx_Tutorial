-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jan 12 22:10:08 2023
-- Host        : fabiancastano running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GICM_Xilinx_Tutorial/PYNQ_Tutorials/T02_Overlay_Combinational/Leds_Vivado/Leds_Vivado.gen/sources_1/bd/design_Leds/ip/design_Leds_ledsPrj_0_0/design_Leds_ledsPrj_0_0_sim_netlist.vhdl
-- Design      : design_Leds_ledsPrj_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_Leds_ledsPrj_0_0_ledsPrj_control_s_axi is
  port (
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_Leds_ledsPrj_0_0_ledsPrj_control_s_axi : entity is "ledsPrj_control_s_axi";
end design_Leds_ledsPrj_0_0_ledsPrj_control_s_axi;

architecture STRUCTURE of design_Leds_ledsPrj_0_0_ledsPrj_control_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal \int_led_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \int_led_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \int_led_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \int_led_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal int_sw_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal int_sw_reg_ap_vld : STD_LOGIC;
  signal \rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal \^s_axi_control_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \int_led_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_led_reg[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_led_reg[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_led_reg[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_led_reg[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_led_reg[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_led_reg[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_led_reg[16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_led_reg[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_led_reg[18]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_led_reg[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_led_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_led_reg[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_led_reg[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_led_reg[22]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_led_reg[23]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_led_reg[24]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_led_reg[25]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_led_reg[26]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_led_reg[27]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_led_reg[28]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_led_reg[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_led_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_led_reg[30]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_led_reg[31]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_led_reg[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_led_reg[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_led_reg[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_led_reg[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_led_reg[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_led_reg[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_led_reg[9]_i_1\ : label is "soft_lutpair5";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
  s_axi_control_RVALID <= \^s_axi_control_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F747"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => \^s_axi_control_rvalid\,
      I3 => s_axi_control_RREADY,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_RREADY,
      I3 => \^s_axi_control_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_control_rvalid\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BFF8B"
    )
        port map (
      I0 => s_axi_control_BREADY,
      I1 => \^s_axi_control_bvalid\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => s_axi_control_AWVALID,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_control_BREADY,
      I3 => \^s_axi_control_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_control_bvalid\,
      R => ap_rst_n_inv
    );
\int_led_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \int_led_reg_reg_n_0_[0]\,
      O => \int_led_reg[0]_i_1_n_0\
    );
\int_led_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => \int_led_reg_reg_n_0_[10]\,
      O => \int_led_reg[10]_i_1_n_0\
    );
\int_led_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => \int_led_reg_reg_n_0_[11]\,
      O => \int_led_reg[11]_i_1_n_0\
    );
\int_led_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => \int_led_reg_reg_n_0_[12]\,
      O => \int_led_reg[12]_i_1_n_0\
    );
\int_led_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => \int_led_reg_reg_n_0_[13]\,
      O => \int_led_reg[13]_i_1_n_0\
    );
\int_led_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => \int_led_reg_reg_n_0_[14]\,
      O => \int_led_reg[14]_i_1_n_0\
    );
\int_led_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => \int_led_reg_reg_n_0_[15]\,
      O => \int_led_reg[15]_i_1_n_0\
    );
\int_led_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => \int_led_reg_reg_n_0_[16]\,
      O => \int_led_reg[16]_i_1_n_0\
    );
\int_led_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => \int_led_reg_reg_n_0_[17]\,
      O => \int_led_reg[17]_i_1_n_0\
    );
\int_led_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => \int_led_reg_reg_n_0_[18]\,
      O => \int_led_reg[18]_i_1_n_0\
    );
\int_led_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => \int_led_reg_reg_n_0_[19]\,
      O => \int_led_reg[19]_i_1_n_0\
    );
\int_led_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \int_led_reg_reg_n_0_[1]\,
      O => \int_led_reg[1]_i_1_n_0\
    );
\int_led_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => \int_led_reg_reg_n_0_[20]\,
      O => \int_led_reg[20]_i_1_n_0\
    );
\int_led_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => \int_led_reg_reg_n_0_[21]\,
      O => \int_led_reg[21]_i_1_n_0\
    );
\int_led_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(22),
      I1 => s_axi_control_WSTRB(2),
      I2 => \int_led_reg_reg_n_0_[22]\,
      O => \int_led_reg[22]_i_1_n_0\
    );
\int_led_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(23),
      I1 => s_axi_control_WSTRB(2),
      I2 => \int_led_reg_reg_n_0_[23]\,
      O => \int_led_reg[23]_i_1_n_0\
    );
\int_led_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(24),
      I1 => s_axi_control_WSTRB(3),
      I2 => \int_led_reg_reg_n_0_[24]\,
      O => \int_led_reg[24]_i_1_n_0\
    );
\int_led_reg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(25),
      I1 => s_axi_control_WSTRB(3),
      I2 => \int_led_reg_reg_n_0_[25]\,
      O => \int_led_reg[25]_i_1_n_0\
    );
\int_led_reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(26),
      I1 => s_axi_control_WSTRB(3),
      I2 => \int_led_reg_reg_n_0_[26]\,
      O => \int_led_reg[26]_i_1_n_0\
    );
\int_led_reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(27),
      I1 => s_axi_control_WSTRB(3),
      I2 => \int_led_reg_reg_n_0_[27]\,
      O => \int_led_reg[27]_i_1_n_0\
    );
\int_led_reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(28),
      I1 => s_axi_control_WSTRB(3),
      I2 => \int_led_reg_reg_n_0_[28]\,
      O => \int_led_reg[28]_i_1_n_0\
    );
\int_led_reg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(29),
      I1 => s_axi_control_WSTRB(3),
      I2 => \int_led_reg_reg_n_0_[29]\,
      O => \int_led_reg[29]_i_1_n_0\
    );
\int_led_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => \int_led_reg_reg_n_0_[2]\,
      O => \int_led_reg[2]_i_1_n_0\
    );
\int_led_reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(30),
      I1 => s_axi_control_WSTRB(3),
      I2 => \int_led_reg_reg_n_0_[30]\,
      O => \int_led_reg[30]_i_1_n_0\
    );
\int_led_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \int_led_reg[31]_i_3_n_0\,
      O => \int_led_reg[31]_i_1_n_0\
    );
\int_led_reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(31),
      I1 => s_axi_control_WSTRB(3),
      I2 => \int_led_reg_reg_n_0_[31]\,
      O => \int_led_reg[31]_i_2_n_0\
    );
\int_led_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \waddr_reg_n_0_[0]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[1]\,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => \waddr_reg_n_0_[4]\,
      I5 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \int_led_reg[31]_i_3_n_0\
    );
\int_led_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => \int_led_reg_reg_n_0_[3]\,
      O => \int_led_reg[3]_i_1_n_0\
    );
\int_led_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => \int_led_reg_reg_n_0_[4]\,
      O => \int_led_reg[4]_i_1_n_0\
    );
\int_led_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => \int_led_reg_reg_n_0_[5]\,
      O => \int_led_reg[5]_i_1_n_0\
    );
\int_led_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => \int_led_reg_reg_n_0_[6]\,
      O => \int_led_reg[6]_i_1_n_0\
    );
\int_led_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => \int_led_reg_reg_n_0_[7]\,
      O => \int_led_reg[7]_i_1_n_0\
    );
\int_led_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => \int_led_reg_reg_n_0_[8]\,
      O => \int_led_reg[8]_i_1_n_0\
    );
\int_led_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => \int_led_reg_reg_n_0_[9]\,
      O => \int_led_reg[9]_i_1_n_0\
    );
\int_led_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[0]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[10]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[10]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[11]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[11]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[12]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[12]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[13]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[13]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[14]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[14]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[15]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[15]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[16]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[16]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[17]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[17]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[18]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[18]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[19]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[19]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[1]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[20]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[20]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[21]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[21]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[22]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[22]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[23]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[23]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[24]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[24]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[25]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[25]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[26]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[26]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[27]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[27]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[28]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[28]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[29]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[29]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[2]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[2]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[30]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[30]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[31]_i_2_n_0\,
      Q => \int_led_reg_reg_n_0_[31]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[3]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[3]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[4]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[4]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[5]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[5]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[6]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[6]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[7]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[7]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[8]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[8]\,
      R => ap_rst_n_inv
    );
\int_led_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_led_reg[31]_i_1_n_0\,
      D => \int_led_reg[9]_i_1_n_0\,
      Q => \int_led_reg_reg_n_0_[9]\,
      R => ap_rst_n_inv
    );
int_sw_reg_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => '1',
      Q => int_sw_reg_ap_vld,
      R => ap_rst_n_inv
    );
\int_sw_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => sw(0),
      Q => int_sw_reg(0),
      R => ap_rst_n_inv
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rdata[0]_i_2_n_0\,
      I1 => s_axi_control_ARADDR(1),
      O => \rdata[0]_i_1_n_0\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => s_axi_control_ARADDR(2),
      I1 => \int_led_reg_reg_n_0_[0]\,
      I2 => s_axi_control_ARADDR(3),
      I3 => int_sw_reg(0),
      I4 => int_sw_reg_ap_vld,
      I5 => s_axi_control_ARADDR(0),
      O => \rdata[0]_i_2_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[10]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[10]_i_1_n_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[11]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[11]_i_1_n_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[12]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[12]_i_1_n_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[13]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[13]_i_1_n_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[14]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[14]_i_1_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[15]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[15]_i_1_n_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[16]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[16]_i_1_n_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[17]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[17]_i_1_n_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[18]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[18]_i_1_n_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[19]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[19]_i_1_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[1]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[1]_i_1_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[20]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[20]_i_1_n_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[21]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[21]_i_1_n_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[22]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[22]_i_1_n_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[23]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[23]_i_1_n_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[24]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[24]_i_1_n_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[25]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[25]_i_1_n_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[26]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[26]_i_1_n_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[27]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[27]_i_1_n_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[28]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[28]_i_1_n_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[29]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[29]_i_1_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[2]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[2]_i_1_n_0\
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[30]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[30]_i_1_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      I2 => s_axi_control_ARADDR(4),
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[31]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[31]_i_3_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[3]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[3]_i_1_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[4]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[4]_i_1_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[5]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[5]_i_1_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[6]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[6]_i_1_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[7]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[7]_i_1_n_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[8]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[8]_i_1_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(2),
      I2 => \int_led_reg_reg_n_0_[9]\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(1),
      O => \rdata[9]_i_1_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[0]_i_1_n_0\,
      Q => s_axi_control_RDATA(0),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[10]_i_1_n_0\,
      Q => s_axi_control_RDATA(10),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[11]_i_1_n_0\,
      Q => s_axi_control_RDATA(11),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[12]_i_1_n_0\,
      Q => s_axi_control_RDATA(12),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[13]_i_1_n_0\,
      Q => s_axi_control_RDATA(13),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[14]_i_1_n_0\,
      Q => s_axi_control_RDATA(14),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[15]_i_1_n_0\,
      Q => s_axi_control_RDATA(15),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[16]_i_1_n_0\,
      Q => s_axi_control_RDATA(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[17]_i_1_n_0\,
      Q => s_axi_control_RDATA(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[18]_i_1_n_0\,
      Q => s_axi_control_RDATA(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[19]_i_1_n_0\,
      Q => s_axi_control_RDATA(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[1]_i_1_n_0\,
      Q => s_axi_control_RDATA(1),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[20]_i_1_n_0\,
      Q => s_axi_control_RDATA(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[21]_i_1_n_0\,
      Q => s_axi_control_RDATA(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[22]_i_1_n_0\,
      Q => s_axi_control_RDATA(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[23]_i_1_n_0\,
      Q => s_axi_control_RDATA(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[24]_i_1_n_0\,
      Q => s_axi_control_RDATA(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[25]_i_1_n_0\,
      Q => s_axi_control_RDATA(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[26]_i_1_n_0\,
      Q => s_axi_control_RDATA(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[27]_i_1_n_0\,
      Q => s_axi_control_RDATA(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[28]_i_1_n_0\,
      Q => s_axi_control_RDATA(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[29]_i_1_n_0\,
      Q => s_axi_control_RDATA(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[2]_i_1_n_0\,
      Q => s_axi_control_RDATA(2),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[30]_i_1_n_0\,
      Q => s_axi_control_RDATA(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[31]_i_3_n_0\,
      Q => s_axi_control_RDATA(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[3]_i_1_n_0\,
      Q => s_axi_control_RDATA(3),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[4]_i_1_n_0\,
      Q => s_axi_control_RDATA(4),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[5]_i_1_n_0\,
      Q => s_axi_control_RDATA(5),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[6]_i_1_n_0\,
      Q => s_axi_control_RDATA(6),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[7]_i_1_n_0\,
      Q => s_axi_control_RDATA(7),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[8]_i_1_n_0\,
      Q => s_axi_control_RDATA(8),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[9]_i_1_n_0\,
      Q => s_axi_control_RDATA(9),
      R => \rdata[31]_i_1_n_0\
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(4),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_Leds_ledsPrj_0_0_ledsPrj is
  port (
    sw : in STD_LOGIC_VECTOR ( 0 to 0 );
    led : out STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of design_Leds_ledsPrj_0_0_ledsPrj : entity is 5;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of design_Leds_ledsPrj_0_0_ledsPrj : entity is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of design_Leds_ledsPrj_0_0_ledsPrj : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_Leds_ledsPrj_0_0_ledsPrj : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of design_Leds_ledsPrj_0_0_ledsPrj : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_Leds_ledsPrj_0_0_ledsPrj : entity is "ledsPrj";
  attribute hls_module : string;
  attribute hls_module of design_Leds_ledsPrj_0_0_ledsPrj : entity is "yes";
end design_Leds_ledsPrj_0_0_ledsPrj;

architecture STRUCTURE of design_Leds_ledsPrj_0_0_ledsPrj is
  signal \<const0>\ : STD_LOGIC;
  signal \^sw\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^sw\(0) <= sw(0);
  led <= \^sw\(0);
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
control_s_axi_U: entity work.design_Leds_ledsPrj_0_0_ledsPrj_control_s_axi
     port map (
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_control_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_control_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_control_WREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      s_axi_control_ARADDR(4 downto 0) => s_axi_control_ARADDR(4 downto 0),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(4 downto 0) => s_axi_control_AWADDR(4 downto 0),
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID,
      sw(0) => \^sw\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_Leds_ledsPrj_0_0 is
  port (
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 0 to 0 );
    led : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_Leds_ledsPrj_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_Leds_ledsPrj_0_0 : entity is "design_Leds_ledsPrj_0_0,ledsPrj,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_Leds_ledsPrj_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_Leds_ledsPrj_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_Leds_ledsPrj_0_0 : entity is "ledsPrj,Vivado 2022.2";
  attribute hls_module : string;
  attribute hls_module of design_Leds_ledsPrj_0_0 : entity is "yes";
end design_Leds_ledsPrj_0_0;

architecture STRUCTURE of design_Leds_ledsPrj_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_control_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_control_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of inst : label is 5;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_Leds_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of led : signal is "xilinx.com:signal:data:1.0 led DATA";
  attribute X_INTERFACE_PARAMETER of led : signal is "XIL_INTERFACENAME led, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axi_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  attribute X_INTERFACE_INFO of s_axi_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  attribute X_INTERFACE_INFO of s_axi_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  attribute X_INTERFACE_INFO of s_axi_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  attribute X_INTERFACE_INFO of s_axi_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  attribute X_INTERFACE_INFO of s_axi_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  attribute X_INTERFACE_INFO of s_axi_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_control_RREADY : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_Leds_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  attribute X_INTERFACE_INFO of s_axi_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  attribute X_INTERFACE_INFO of s_axi_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
  attribute X_INTERFACE_INFO of sw : signal is "xilinx.com:signal:data:1.0 sw DATA";
  attribute X_INTERFACE_PARAMETER of sw : signal is "XIL_INTERFACENAME sw, LAYERED_METADATA undef";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_Leds_ledsPrj_0_0_ledsPrj
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      led => led,
      s_axi_control_ARADDR(4 downto 0) => s_axi_control_ARADDR(4 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(4 downto 0) => s_axi_control_AWADDR(4 downto 0),
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BRESP(1 downto 0) => NLW_inst_s_axi_control_BRESP_UNCONNECTED(1 downto 0),
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RRESP(1 downto 0) => NLW_inst_s_axi_control_RRESP_UNCONNECTED(1 downto 0),
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID,
      sw(0) => sw(0)
    );
end STRUCTURE;
