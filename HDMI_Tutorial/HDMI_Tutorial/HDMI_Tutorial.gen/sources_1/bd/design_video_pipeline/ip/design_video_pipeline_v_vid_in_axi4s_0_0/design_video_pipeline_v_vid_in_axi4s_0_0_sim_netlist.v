// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Jan 11 12:37:14 2023
// Host        : fabiancastano running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GICM_Xilinx_Tutorial/HDMI_Tutorial/HDMI_Tutorial/HDMI_Tutorial.gen/sources_1/bd/design_video_pipeline/ip/design_video_pipeline_v_vid_in_axi4s_0_0/design_video_pipeline_v_vid_in_axi4s_0_0_sim_netlist.v
// Design      : design_video_pipeline_v_vid_in_axi4s_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_video_pipeline_v_vid_in_axi4s_0_0,v_vid_in_axi4s_v5_0_2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "v_vid_in_axi4s_v5_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_video_pipeline_v_vid_in_axi4s_0_0
   (vid_io_in_ce,
    vid_active_video,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    vid_data,
    aclk,
    aclken,
    aresetn,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tuser,
    m_axis_video_tlast,
    fid,
    vtd_active_video,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    vtd_field_id,
    overflow,
    underflow,
    axis_enable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_io_in_ce_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_in_ce_intf, POLARITY ACTIVE_HIGH" *) input vid_io_in_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in ACTIVE_VIDEO" *) input vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in VBLANK" *) input vid_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in HBLANK" *) input vid_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in VSYNC" *) input vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in HSYNC" *) input vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in FIELD" *) input vid_field_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in DATA" *) input [23:0]vid_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_out, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_video_pipeline_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_HIGH" *) input aclken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDATA" *) output [23:0]m_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TVALID" *) output m_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input m_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output m_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_video_pipeline_dvi2rgb_0_0_PixelClk, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0" *) output m_axis_video_tlast;
  output fid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out ACTIVE_VIDEO" *) output vtd_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VBLANK" *) output vtd_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HBLANK" *) output vtd_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VSYNC" *) output vtd_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HSYNC" *) output vtd_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out FIELD" *) output vtd_field_id;
  output overflow;
  output underflow;
  input axis_enable;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire axis_enable;
  wire fid;
  wire [23:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire overflow;
  wire underflow;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_vblank;
  wire vid_vsync;
  wire vtd_active_video;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_vblank;
  wire vtd_vsync;

  (* C_ADDR_WIDTH = "10" *) 
  (* C_ADDR_WIDTH_PIXEL_REMAP_420 = "10" *) 
  (* C_COMPONENTS_PER_PIXEL = "3" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_ASYNC_CLK = "0" *) 
  (* C_INCLUDE_PIXEL_DROP = "0" *) 
  (* C_INCLUDE_PIXEL_REMAP_420 = "0" *) 
  (* C_M_AXIS_COMPONENT_WIDTH = "8" *) 
  (* C_M_AXIS_TDATA_WIDTH = "24" *) 
  (* C_NATIVE_COMPONENT_WIDTH = "8" *) 
  (* C_NATIVE_DATA_WIDTH = "24" *) 
  (* C_PIXELS_PER_CLOCK = "1" *) 
  (* C_VID_NATIVE_DE = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2 inst
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .axis_enable(axis_enable),
        .drop_en(1'b0),
        .fid(fid),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .overflow(overflow),
        .remap_420_en(1'b0),
        .underflow(underflow),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_data_arb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vid_de_arb(1'b0),
        .vid_field_id(vid_field_id),
        .vid_field_id_arb(1'b0),
        .vid_format({1'b0,1'b0}),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_hsync_arb(1'b0),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(1'b0),
        .vid_io_in_reset(1'b0),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vid_vsync_arb(1'b0),
        .vtd_active_video(vtd_active_video),
        .vtd_field_id(vtd_field_id),
        .vtd_hblank(vtd_hblank),
        .vtd_hsync(vtd_hsync),
        .vtd_vblank(vtd_vblank),
        .vtd_vsync(vtd_vsync));
endmodule

(* C_ADDR_WIDTH = "10" *) (* C_ADDR_WIDTH_PIXEL_REMAP_420 = "10" *) (* C_COMPONENTS_PER_PIXEL = "3" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_ASYNC_CLK = "0" *) (* C_INCLUDE_PIXEL_DROP = "0" *) 
(* C_INCLUDE_PIXEL_REMAP_420 = "0" *) (* C_M_AXIS_COMPONENT_WIDTH = "8" *) (* C_M_AXIS_TDATA_WIDTH = "24" *) 
(* C_NATIVE_COMPONENT_WIDTH = "8" *) (* C_NATIVE_DATA_WIDTH = "24" *) (* C_PIXELS_PER_CLOCK = "1" *) 
(* C_VID_NATIVE_DE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_2" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2
   (vid_io_in_clk,
    vid_io_in_ce,
    vid_io_in_reset,
    vid_active_video,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    vid_data,
    vid_de_arb,
    vid_vsync_arb,
    vid_hsync_arb,
    vid_field_id_arb,
    vid_data_arb,
    vid_format,
    aclk,
    aclken,
    aresetn,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tuser,
    m_axis_video_tlast,
    fid,
    vtd_active_video,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    vtd_field_id,
    overflow,
    underflow,
    axis_enable,
    drop_en,
    remap_420_en);
  input vid_io_in_clk;
  input vid_io_in_ce;
  input vid_io_in_reset;
  input vid_active_video;
  input vid_vblank;
  input vid_hblank;
  input vid_vsync;
  input vid_hsync;
  input vid_field_id;
  input [23:0]vid_data;
  input [0:0]vid_de_arb;
  input [0:0]vid_vsync_arb;
  input [0:0]vid_hsync_arb;
  input vid_field_id_arb;
  input [23:0]vid_data_arb;
  input [1:0]vid_format;
  input aclk;
  input aclken;
  input aresetn;
  output [23:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output fid;
  output vtd_active_video;
  output vtd_vblank;
  output vtd_hblank;
  output vtd_vsync;
  output vtd_hsync;
  output vtd_field_id;
  output overflow;
  output underflow;
  input axis_enable;
  input drop_en;
  input remap_420_en;

  wire COUPLER_INST_n_30;
  wire COUPLER_INST_n_31;
  wire COUPLER_INST_n_32;
  wire COUPLER_INST_n_33;
  wire COUPLER_INST_n_34;
  wire COUPLER_INST_n_35;
  wire COUPLER_INST_n_36;
  wire COUPLER_INST_n_37;
  wire COUPLER_INST_n_38;
  wire COUPLER_INST_n_39;
  wire COUPLER_INST_n_40;
  wire COUPLER_INST_n_41;
  wire COUPLER_INST_n_42;
  wire COUPLER_INST_n_43;
  wire COUPLER_INST_n_44;
  wire COUPLER_INST_n_45;
  wire COUPLER_INST_n_46;
  wire FORMATTER_INST_n_34;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire axis_enable;
  wire de_3;
  wire fid;
  wire [26:0]idf_data;
  wire [23:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire overflow;
  wire underflow;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_reset;
  wire \vid_reset_pulse_cnt[15]_i_2_n_0 ;
  wire \vid_reset_pulse_cnt[15]_i_3_n_0 ;
  wire \vid_reset_pulse_cnt[15]_i_4_n_0 ;
  wire \vid_reset_pulse_cnt_reg_n_0_[0] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[10] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[11] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[12] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[13] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[14] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[15] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[1] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[2] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[3] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[4] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[5] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[6] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[7] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[8] ;
  wire \vid_reset_pulse_cnt_reg_n_0_[9] ;
  wire vid_vblank;
  wire vid_vsync;
  wire vid_vsync_dly;
  wire vtd_active_video;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_vblank;
  wire vtd_vsync;

  design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2_cdc_single CDC_SINGLE_REMAP_OVERFLOW_INST
       (.aclk(aclk));
  design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2_cdc_single__xdcDup__1 CDC_SINGLE_RESET_PULSE_INST
       (.aclk(aclk),
        .src_in(\vid_reset_pulse_cnt_reg_n_0_[0] ));
  design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2_coupler COUPLER_INST
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .de_3(de_3),
        .din(idf_data),
        .dout({fid,m_axis_video_tuser,m_axis_video_tlast,m_axis_video_tdata}),
        .\gof.overflow_i_reg (COUPLER_INST_n_46),
        .\gof.overflow_i_reg_0 (FORMATTER_INST_n_34),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .overflow(overflow),
        .src_in(\vid_reset_pulse_cnt_reg_n_0_[0] ),
        .underflow(underflow),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_reset(vid_reset),
        .\vid_reset_pulse_cnt_reg[10] (COUPLER_INST_n_39),
        .\vid_reset_pulse_cnt_reg[10]_0 (\vid_reset_pulse_cnt_reg_n_0_[10] ),
        .\vid_reset_pulse_cnt_reg[11] (COUPLER_INST_n_40),
        .\vid_reset_pulse_cnt_reg[11]_0 (\vid_reset_pulse_cnt_reg_n_0_[11] ),
        .\vid_reset_pulse_cnt_reg[12] (COUPLER_INST_n_41),
        .\vid_reset_pulse_cnt_reg[12]_0 (\vid_reset_pulse_cnt_reg_n_0_[12] ),
        .\vid_reset_pulse_cnt_reg[13] (COUPLER_INST_n_42),
        .\vid_reset_pulse_cnt_reg[13]_0 (\vid_reset_pulse_cnt_reg_n_0_[13] ),
        .\vid_reset_pulse_cnt_reg[14] (COUPLER_INST_n_43),
        .\vid_reset_pulse_cnt_reg[14]_0 (\vid_reset_pulse_cnt_reg_n_0_[14] ),
        .\vid_reset_pulse_cnt_reg[15] (COUPLER_INST_n_44),
        .\vid_reset_pulse_cnt_reg[15]_0 (COUPLER_INST_n_45),
        .\vid_reset_pulse_cnt_reg[15]_1 (\vid_reset_pulse_cnt[15]_i_2_n_0 ),
        .\vid_reset_pulse_cnt_reg[15]_2 (\vid_reset_pulse_cnt[15]_i_3_n_0 ),
        .\vid_reset_pulse_cnt_reg[15]_3 (\vid_reset_pulse_cnt[15]_i_4_n_0 ),
        .\vid_reset_pulse_cnt_reg[15]_4 (\vid_reset_pulse_cnt_reg_n_0_[15] ),
        .\vid_reset_pulse_cnt_reg[1] (COUPLER_INST_n_30),
        .\vid_reset_pulse_cnt_reg[1]_0 (\vid_reset_pulse_cnt_reg_n_0_[1] ),
        .\vid_reset_pulse_cnt_reg[2] (COUPLER_INST_n_31),
        .\vid_reset_pulse_cnt_reg[2]_0 (\vid_reset_pulse_cnt_reg_n_0_[2] ),
        .\vid_reset_pulse_cnt_reg[3] (COUPLER_INST_n_32),
        .\vid_reset_pulse_cnt_reg[3]_0 (\vid_reset_pulse_cnt_reg_n_0_[3] ),
        .\vid_reset_pulse_cnt_reg[4] (COUPLER_INST_n_33),
        .\vid_reset_pulse_cnt_reg[4]_0 (\vid_reset_pulse_cnt_reg_n_0_[4] ),
        .\vid_reset_pulse_cnt_reg[5] (COUPLER_INST_n_34),
        .\vid_reset_pulse_cnt_reg[5]_0 (\vid_reset_pulse_cnt_reg_n_0_[5] ),
        .\vid_reset_pulse_cnt_reg[6] (COUPLER_INST_n_35),
        .\vid_reset_pulse_cnt_reg[6]_0 (\vid_reset_pulse_cnt_reg_n_0_[6] ),
        .\vid_reset_pulse_cnt_reg[7] (COUPLER_INST_n_36),
        .\vid_reset_pulse_cnt_reg[7]_0 (\vid_reset_pulse_cnt_reg_n_0_[7] ),
        .\vid_reset_pulse_cnt_reg[8] (COUPLER_INST_n_37),
        .\vid_reset_pulse_cnt_reg[8]_0 (\vid_reset_pulse_cnt_reg_n_0_[8] ),
        .\vid_reset_pulse_cnt_reg[9] (COUPLER_INST_n_38),
        .\vid_reset_pulse_cnt_reg[9]_0 (\vid_reset_pulse_cnt_reg_n_0_[9] ),
        .vid_vsync(vid_vsync),
        .vid_vsync_dly(vid_vsync_dly));
  design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2_formatter FORMATTER_INST
       (.aclk(aclk),
        .axis_enable(axis_enable),
        .de_1_reg_0(vtd_active_video),
        .de_3(de_3),
        .de_3_reg_0(COUPLER_INST_n_46),
        .din(idf_data),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtd_field_id(vtd_field_id),
        .vtd_hblank(vtd_hblank),
        .vtd_hsync(vtd_hsync),
        .vtd_locked_reg_0(FORMATTER_INST_n_34),
        .vtd_vblank(vtd_vblank),
        .vtd_vsync(vtd_vsync));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \vid_reset_pulse_cnt[15]_i_2 
       (.I0(\vid_reset_pulse_cnt_reg_n_0_[8] ),
        .I1(\vid_reset_pulse_cnt_reg_n_0_[9] ),
        .I2(\vid_reset_pulse_cnt_reg_n_0_[6] ),
        .I3(\vid_reset_pulse_cnt_reg_n_0_[7] ),
        .I4(\vid_reset_pulse_cnt_reg_n_0_[5] ),
        .I5(\vid_reset_pulse_cnt_reg_n_0_[4] ),
        .O(\vid_reset_pulse_cnt[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \vid_reset_pulse_cnt[15]_i_3 
       (.I0(\vid_reset_pulse_cnt_reg_n_0_[14] ),
        .I1(\vid_reset_pulse_cnt_reg_n_0_[15] ),
        .I2(\vid_reset_pulse_cnt_reg_n_0_[12] ),
        .I3(\vid_reset_pulse_cnt_reg_n_0_[13] ),
        .I4(\vid_reset_pulse_cnt_reg_n_0_[11] ),
        .I5(\vid_reset_pulse_cnt_reg_n_0_[10] ),
        .O(\vid_reset_pulse_cnt[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \vid_reset_pulse_cnt[15]_i_4 
       (.I0(\vid_reset_pulse_cnt_reg_n_0_[1] ),
        .I1(\vid_reset_pulse_cnt_reg_n_0_[0] ),
        .I2(\vid_reset_pulse_cnt_reg_n_0_[3] ),
        .I3(\vid_reset_pulse_cnt_reg_n_0_[2] ),
        .O(\vid_reset_pulse_cnt[15]_i_4_n_0 ));
  FDRE \vid_reset_pulse_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_30),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[0] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_40),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[10] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_41),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[11] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_42),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[12] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_43),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[13] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_44),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[14] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_45),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[15] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_31),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[1] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_32),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[2] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_33),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[3] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_34),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[4] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_35),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[5] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_36),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[6] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_37),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[7] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_38),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[8] ),
        .R(vid_reset));
  FDRE \vid_reset_pulse_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_39),
        .Q(\vid_reset_pulse_cnt_reg_n_0_[9] ),
        .R(vid_reset));
  FDRE vid_vsync_dly_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vid_vsync),
        .Q(vid_vsync_dly),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_2_cdc_single" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2_cdc_single
   (aclk);
  input aclk;

  wire aclk;
  wire NLW_xpm_cdc_single_inst_dest_out_UNCONNECTED;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_video_pipeline_v_vid_in_axi4s_0_0_xpm_cdc_single xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(NLW_xpm_cdc_single_inst_dest_out_UNCONNECTED),
        .src_clk(1'b0),
        .src_in(1'b0));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_2_cdc_single" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2_cdc_single__xdcDup__1
   (src_in,
    aclk);
  input src_in;
  input aclk;

  wire aclk;
  wire src_in;
  wire NLW_xpm_cdc_single_inst_dest_out_UNCONNECTED;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_video_pipeline_v_vid_in_axi4s_0_0_xpm_cdc_single__2 xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(NLW_xpm_cdc_single_inst_dest_out_UNCONNECTED),
        .src_clk(1'b0),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_2_coupler" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2_coupler
   (overflow,
    dout,
    underflow,
    vid_reset,
    \vid_reset_pulse_cnt_reg[1] ,
    \vid_reset_pulse_cnt_reg[2] ,
    \vid_reset_pulse_cnt_reg[3] ,
    \vid_reset_pulse_cnt_reg[4] ,
    \vid_reset_pulse_cnt_reg[5] ,
    \vid_reset_pulse_cnt_reg[6] ,
    \vid_reset_pulse_cnt_reg[7] ,
    \vid_reset_pulse_cnt_reg[8] ,
    \vid_reset_pulse_cnt_reg[9] ,
    \vid_reset_pulse_cnt_reg[10] ,
    \vid_reset_pulse_cnt_reg[11] ,
    \vid_reset_pulse_cnt_reg[12] ,
    \vid_reset_pulse_cnt_reg[13] ,
    \vid_reset_pulse_cnt_reg[14] ,
    \vid_reset_pulse_cnt_reg[15] ,
    \vid_reset_pulse_cnt_reg[15]_0 ,
    \gof.overflow_i_reg ,
    m_axis_video_tvalid,
    aclk,
    din,
    \gof.overflow_i_reg_0 ,
    aresetn,
    de_3,
    vid_io_in_ce,
    \vid_reset_pulse_cnt_reg[1]_0 ,
    \vid_reset_pulse_cnt_reg[15]_1 ,
    \vid_reset_pulse_cnt_reg[15]_2 ,
    \vid_reset_pulse_cnt_reg[15]_3 ,
    src_in,
    \vid_reset_pulse_cnt_reg[2]_0 ,
    \vid_reset_pulse_cnt_reg[3]_0 ,
    \vid_reset_pulse_cnt_reg[4]_0 ,
    \vid_reset_pulse_cnt_reg[5]_0 ,
    \vid_reset_pulse_cnt_reg[6]_0 ,
    \vid_reset_pulse_cnt_reg[7]_0 ,
    \vid_reset_pulse_cnt_reg[8]_0 ,
    \vid_reset_pulse_cnt_reg[9]_0 ,
    \vid_reset_pulse_cnt_reg[10]_0 ,
    \vid_reset_pulse_cnt_reg[11]_0 ,
    \vid_reset_pulse_cnt_reg[12]_0 ,
    \vid_reset_pulse_cnt_reg[13]_0 ,
    \vid_reset_pulse_cnt_reg[14]_0 ,
    \vid_reset_pulse_cnt_reg[15]_4 ,
    vid_vsync_dly,
    vid_vsync,
    m_axis_video_tready,
    aclken);
  output overflow;
  output [26:0]dout;
  output underflow;
  output vid_reset;
  output \vid_reset_pulse_cnt_reg[1] ;
  output \vid_reset_pulse_cnt_reg[2] ;
  output \vid_reset_pulse_cnt_reg[3] ;
  output \vid_reset_pulse_cnt_reg[4] ;
  output \vid_reset_pulse_cnt_reg[5] ;
  output \vid_reset_pulse_cnt_reg[6] ;
  output \vid_reset_pulse_cnt_reg[7] ;
  output \vid_reset_pulse_cnt_reg[8] ;
  output \vid_reset_pulse_cnt_reg[9] ;
  output \vid_reset_pulse_cnt_reg[10] ;
  output \vid_reset_pulse_cnt_reg[11] ;
  output \vid_reset_pulse_cnt_reg[12] ;
  output \vid_reset_pulse_cnt_reg[13] ;
  output \vid_reset_pulse_cnt_reg[14] ;
  output \vid_reset_pulse_cnt_reg[15] ;
  output \vid_reset_pulse_cnt_reg[15]_0 ;
  output \gof.overflow_i_reg ;
  output m_axis_video_tvalid;
  input aclk;
  input [26:0]din;
  input \gof.overflow_i_reg_0 ;
  input aresetn;
  input de_3;
  input vid_io_in_ce;
  input \vid_reset_pulse_cnt_reg[1]_0 ;
  input \vid_reset_pulse_cnt_reg[15]_1 ;
  input \vid_reset_pulse_cnt_reg[15]_2 ;
  input \vid_reset_pulse_cnt_reg[15]_3 ;
  input src_in;
  input \vid_reset_pulse_cnt_reg[2]_0 ;
  input \vid_reset_pulse_cnt_reg[3]_0 ;
  input \vid_reset_pulse_cnt_reg[4]_0 ;
  input \vid_reset_pulse_cnt_reg[5]_0 ;
  input \vid_reset_pulse_cnt_reg[6]_0 ;
  input \vid_reset_pulse_cnt_reg[7]_0 ;
  input \vid_reset_pulse_cnt_reg[8]_0 ;
  input \vid_reset_pulse_cnt_reg[9]_0 ;
  input \vid_reset_pulse_cnt_reg[10]_0 ;
  input \vid_reset_pulse_cnt_reg[11]_0 ;
  input \vid_reset_pulse_cnt_reg[12]_0 ;
  input \vid_reset_pulse_cnt_reg[13]_0 ;
  input \vid_reset_pulse_cnt_reg[14]_0 ;
  input \vid_reset_pulse_cnt_reg[15]_4 ;
  input vid_vsync_dly;
  input vid_vsync;
  input m_axis_video_tready;
  input aclken;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire de_3;
  wire [26:0]din;
  wire [26:0]dout;
  wire \gof.overflow_i_reg ;
  wire \gof.overflow_i_reg_0 ;
  wire m_axis_video_tready;
  wire m_axis_video_tvalid;
  wire overflow;
  wire src_in;
  wire underflow;
  wire vid_io_in_ce;
  wire vid_reset;
  wire \vid_reset_pulse_cnt_reg[10] ;
  wire \vid_reset_pulse_cnt_reg[10]_0 ;
  wire \vid_reset_pulse_cnt_reg[11] ;
  wire \vid_reset_pulse_cnt_reg[11]_0 ;
  wire \vid_reset_pulse_cnt_reg[12] ;
  wire \vid_reset_pulse_cnt_reg[12]_0 ;
  wire \vid_reset_pulse_cnt_reg[13] ;
  wire \vid_reset_pulse_cnt_reg[13]_0 ;
  wire \vid_reset_pulse_cnt_reg[14] ;
  wire \vid_reset_pulse_cnt_reg[14]_0 ;
  wire \vid_reset_pulse_cnt_reg[15] ;
  wire \vid_reset_pulse_cnt_reg[15]_0 ;
  wire \vid_reset_pulse_cnt_reg[15]_1 ;
  wire \vid_reset_pulse_cnt_reg[15]_2 ;
  wire \vid_reset_pulse_cnt_reg[15]_3 ;
  wire \vid_reset_pulse_cnt_reg[15]_4 ;
  wire \vid_reset_pulse_cnt_reg[1] ;
  wire \vid_reset_pulse_cnt_reg[1]_0 ;
  wire \vid_reset_pulse_cnt_reg[2] ;
  wire \vid_reset_pulse_cnt_reg[2]_0 ;
  wire \vid_reset_pulse_cnt_reg[3] ;
  wire \vid_reset_pulse_cnt_reg[3]_0 ;
  wire \vid_reset_pulse_cnt_reg[4] ;
  wire \vid_reset_pulse_cnt_reg[4]_0 ;
  wire \vid_reset_pulse_cnt_reg[5] ;
  wire \vid_reset_pulse_cnt_reg[5]_0 ;
  wire \vid_reset_pulse_cnt_reg[6] ;
  wire \vid_reset_pulse_cnt_reg[6]_0 ;
  wire \vid_reset_pulse_cnt_reg[7] ;
  wire \vid_reset_pulse_cnt_reg[7]_0 ;
  wire \vid_reset_pulse_cnt_reg[8] ;
  wire \vid_reset_pulse_cnt_reg[8]_0 ;
  wire \vid_reset_pulse_cnt_reg[9] ;
  wire \vid_reset_pulse_cnt_reg[9]_0 ;
  wire vid_vsync;
  wire vid_vsync_dly;
  wire wr_en_i__0;
  wire wr_rst_busy_i;

  design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2_fifo_sync \generate_sync_fifo.FIFO_INST 
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .din(din),
        .dout(dout),
        .\gof.overflow_i_reg (\gof.overflow_i_reg ),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .overflow(overflow),
        .src_in(src_in),
        .underflow(underflow),
        .vid_reset(vid_reset),
        .\vid_reset_pulse_cnt_reg[10] (\vid_reset_pulse_cnt_reg[10] ),
        .\vid_reset_pulse_cnt_reg[10]_0 (\vid_reset_pulse_cnt_reg[10]_0 ),
        .\vid_reset_pulse_cnt_reg[11] (\vid_reset_pulse_cnt_reg[11] ),
        .\vid_reset_pulse_cnt_reg[11]_0 (\vid_reset_pulse_cnt_reg[11]_0 ),
        .\vid_reset_pulse_cnt_reg[12] (\vid_reset_pulse_cnt_reg[12] ),
        .\vid_reset_pulse_cnt_reg[12]_0 (\vid_reset_pulse_cnt_reg[12]_0 ),
        .\vid_reset_pulse_cnt_reg[13] (\vid_reset_pulse_cnt_reg[13] ),
        .\vid_reset_pulse_cnt_reg[13]_0 (\vid_reset_pulse_cnt_reg[13]_0 ),
        .\vid_reset_pulse_cnt_reg[14] (\vid_reset_pulse_cnt_reg[14] ),
        .\vid_reset_pulse_cnt_reg[14]_0 (\vid_reset_pulse_cnt_reg[14]_0 ),
        .\vid_reset_pulse_cnt_reg[15] (\vid_reset_pulse_cnt_reg[15] ),
        .\vid_reset_pulse_cnt_reg[15]_0 (\vid_reset_pulse_cnt_reg[15]_0 ),
        .\vid_reset_pulse_cnt_reg[15]_1 (\vid_reset_pulse_cnt_reg[15]_1 ),
        .\vid_reset_pulse_cnt_reg[15]_2 (\vid_reset_pulse_cnt_reg[15]_2 ),
        .\vid_reset_pulse_cnt_reg[15]_3 (\vid_reset_pulse_cnt_reg[15]_3 ),
        .\vid_reset_pulse_cnt_reg[15]_4 (\vid_reset_pulse_cnt_reg[15]_4 ),
        .\vid_reset_pulse_cnt_reg[1] (\vid_reset_pulse_cnt_reg[1] ),
        .\vid_reset_pulse_cnt_reg[1]_0 (\vid_reset_pulse_cnt_reg[1]_0 ),
        .\vid_reset_pulse_cnt_reg[2] (\vid_reset_pulse_cnt_reg[2] ),
        .\vid_reset_pulse_cnt_reg[2]_0 (\vid_reset_pulse_cnt_reg[2]_0 ),
        .\vid_reset_pulse_cnt_reg[3] (\vid_reset_pulse_cnt_reg[3] ),
        .\vid_reset_pulse_cnt_reg[3]_0 (\vid_reset_pulse_cnt_reg[3]_0 ),
        .\vid_reset_pulse_cnt_reg[4] (\vid_reset_pulse_cnt_reg[4] ),
        .\vid_reset_pulse_cnt_reg[4]_0 (\vid_reset_pulse_cnt_reg[4]_0 ),
        .\vid_reset_pulse_cnt_reg[5] (\vid_reset_pulse_cnt_reg[5] ),
        .\vid_reset_pulse_cnt_reg[5]_0 (\vid_reset_pulse_cnt_reg[5]_0 ),
        .\vid_reset_pulse_cnt_reg[6] (\vid_reset_pulse_cnt_reg[6] ),
        .\vid_reset_pulse_cnt_reg[6]_0 (\vid_reset_pulse_cnt_reg[6]_0 ),
        .\vid_reset_pulse_cnt_reg[7] (\vid_reset_pulse_cnt_reg[7] ),
        .\vid_reset_pulse_cnt_reg[7]_0 (\vid_reset_pulse_cnt_reg[7]_0 ),
        .\vid_reset_pulse_cnt_reg[8] (\vid_reset_pulse_cnt_reg[8] ),
        .\vid_reset_pulse_cnt_reg[8]_0 (\vid_reset_pulse_cnt_reg[8]_0 ),
        .\vid_reset_pulse_cnt_reg[9] (\vid_reset_pulse_cnt_reg[9] ),
        .\vid_reset_pulse_cnt_reg[9]_0 (\vid_reset_pulse_cnt_reg[9]_0 ),
        .vid_vsync(vid_vsync),
        .vid_vsync_dly(vid_vsync_dly),
        .wr_en(wr_en_i__0),
        .wr_rst_busy(wr_rst_busy_i));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    wr_en_i
       (.I0(\gof.overflow_i_reg_0 ),
        .I1(aresetn),
        .I2(overflow),
        .I3(de_3),
        .I4(wr_rst_busy_i),
        .I5(vid_io_in_ce),
        .O(wr_en_i__0));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_2_fifo_sync" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2_fifo_sync
   (overflow,
    wr_rst_busy,
    dout,
    underflow,
    vid_reset,
    \vid_reset_pulse_cnt_reg[1] ,
    \vid_reset_pulse_cnt_reg[2] ,
    \vid_reset_pulse_cnt_reg[3] ,
    \vid_reset_pulse_cnt_reg[4] ,
    \vid_reset_pulse_cnt_reg[5] ,
    \vid_reset_pulse_cnt_reg[6] ,
    \vid_reset_pulse_cnt_reg[7] ,
    \vid_reset_pulse_cnt_reg[8] ,
    \vid_reset_pulse_cnt_reg[9] ,
    \vid_reset_pulse_cnt_reg[10] ,
    \vid_reset_pulse_cnt_reg[11] ,
    \vid_reset_pulse_cnt_reg[12] ,
    \vid_reset_pulse_cnt_reg[13] ,
    \vid_reset_pulse_cnt_reg[14] ,
    \vid_reset_pulse_cnt_reg[15] ,
    \vid_reset_pulse_cnt_reg[15]_0 ,
    \gof.overflow_i_reg ,
    m_axis_video_tvalid,
    aclk,
    wr_en,
    din,
    \vid_reset_pulse_cnt_reg[1]_0 ,
    \vid_reset_pulse_cnt_reg[15]_1 ,
    \vid_reset_pulse_cnt_reg[15]_2 ,
    \vid_reset_pulse_cnt_reg[15]_3 ,
    src_in,
    \vid_reset_pulse_cnt_reg[2]_0 ,
    \vid_reset_pulse_cnt_reg[3]_0 ,
    \vid_reset_pulse_cnt_reg[4]_0 ,
    \vid_reset_pulse_cnt_reg[5]_0 ,
    \vid_reset_pulse_cnt_reg[6]_0 ,
    \vid_reset_pulse_cnt_reg[7]_0 ,
    \vid_reset_pulse_cnt_reg[8]_0 ,
    \vid_reset_pulse_cnt_reg[9]_0 ,
    \vid_reset_pulse_cnt_reg[10]_0 ,
    \vid_reset_pulse_cnt_reg[11]_0 ,
    \vid_reset_pulse_cnt_reg[12]_0 ,
    \vid_reset_pulse_cnt_reg[13]_0 ,
    \vid_reset_pulse_cnt_reg[14]_0 ,
    \vid_reset_pulse_cnt_reg[15]_4 ,
    vid_vsync_dly,
    vid_vsync,
    aresetn,
    m_axis_video_tready,
    aclken);
  output overflow;
  output wr_rst_busy;
  output [26:0]dout;
  output underflow;
  output vid_reset;
  output \vid_reset_pulse_cnt_reg[1] ;
  output \vid_reset_pulse_cnt_reg[2] ;
  output \vid_reset_pulse_cnt_reg[3] ;
  output \vid_reset_pulse_cnt_reg[4] ;
  output \vid_reset_pulse_cnt_reg[5] ;
  output \vid_reset_pulse_cnt_reg[6] ;
  output \vid_reset_pulse_cnt_reg[7] ;
  output \vid_reset_pulse_cnt_reg[8] ;
  output \vid_reset_pulse_cnt_reg[9] ;
  output \vid_reset_pulse_cnt_reg[10] ;
  output \vid_reset_pulse_cnt_reg[11] ;
  output \vid_reset_pulse_cnt_reg[12] ;
  output \vid_reset_pulse_cnt_reg[13] ;
  output \vid_reset_pulse_cnt_reg[14] ;
  output \vid_reset_pulse_cnt_reg[15] ;
  output \vid_reset_pulse_cnt_reg[15]_0 ;
  output \gof.overflow_i_reg ;
  output m_axis_video_tvalid;
  input aclk;
  input wr_en;
  input [26:0]din;
  input \vid_reset_pulse_cnt_reg[1]_0 ;
  input \vid_reset_pulse_cnt_reg[15]_1 ;
  input \vid_reset_pulse_cnt_reg[15]_2 ;
  input \vid_reset_pulse_cnt_reg[15]_3 ;
  input src_in;
  input \vid_reset_pulse_cnt_reg[2]_0 ;
  input \vid_reset_pulse_cnt_reg[3]_0 ;
  input \vid_reset_pulse_cnt_reg[4]_0 ;
  input \vid_reset_pulse_cnt_reg[5]_0 ;
  input \vid_reset_pulse_cnt_reg[6]_0 ;
  input \vid_reset_pulse_cnt_reg[7]_0 ;
  input \vid_reset_pulse_cnt_reg[8]_0 ;
  input \vid_reset_pulse_cnt_reg[9]_0 ;
  input \vid_reset_pulse_cnt_reg[10]_0 ;
  input \vid_reset_pulse_cnt_reg[11]_0 ;
  input \vid_reset_pulse_cnt_reg[12]_0 ;
  input \vid_reset_pulse_cnt_reg[13]_0 ;
  input \vid_reset_pulse_cnt_reg[14]_0 ;
  input \vid_reset_pulse_cnt_reg[15]_4 ;
  input vid_vsync_dly;
  input vid_vsync;
  input aresetn;
  input m_axis_video_tready;
  input aclken;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [26:0]din;
  wire [26:0]dout;
  wire empty_i;
  wire \gof.overflow_i_reg ;
  wire m_axis_video_tready;
  wire m_axis_video_tvalid;
  wire overflow;
  wire rd_en_i;
  wire src_in;
  wire underflow;
  wire vid_reset;
  wire vid_reset_pulse_cnt0;
  wire \vid_reset_pulse_cnt_reg[10] ;
  wire \vid_reset_pulse_cnt_reg[10]_0 ;
  wire \vid_reset_pulse_cnt_reg[11] ;
  wire \vid_reset_pulse_cnt_reg[11]_0 ;
  wire \vid_reset_pulse_cnt_reg[12] ;
  wire \vid_reset_pulse_cnt_reg[12]_0 ;
  wire \vid_reset_pulse_cnt_reg[13] ;
  wire \vid_reset_pulse_cnt_reg[13]_0 ;
  wire \vid_reset_pulse_cnt_reg[14] ;
  wire \vid_reset_pulse_cnt_reg[14]_0 ;
  wire \vid_reset_pulse_cnt_reg[15] ;
  wire \vid_reset_pulse_cnt_reg[15]_0 ;
  wire \vid_reset_pulse_cnt_reg[15]_1 ;
  wire \vid_reset_pulse_cnt_reg[15]_2 ;
  wire \vid_reset_pulse_cnt_reg[15]_3 ;
  wire \vid_reset_pulse_cnt_reg[15]_4 ;
  wire \vid_reset_pulse_cnt_reg[1] ;
  wire \vid_reset_pulse_cnt_reg[1]_0 ;
  wire \vid_reset_pulse_cnt_reg[2] ;
  wire \vid_reset_pulse_cnt_reg[2]_0 ;
  wire \vid_reset_pulse_cnt_reg[3] ;
  wire \vid_reset_pulse_cnt_reg[3]_0 ;
  wire \vid_reset_pulse_cnt_reg[4] ;
  wire \vid_reset_pulse_cnt_reg[4]_0 ;
  wire \vid_reset_pulse_cnt_reg[5] ;
  wire \vid_reset_pulse_cnt_reg[5]_0 ;
  wire \vid_reset_pulse_cnt_reg[6] ;
  wire \vid_reset_pulse_cnt_reg[6]_0 ;
  wire \vid_reset_pulse_cnt_reg[7] ;
  wire \vid_reset_pulse_cnt_reg[7]_0 ;
  wire \vid_reset_pulse_cnt_reg[8] ;
  wire \vid_reset_pulse_cnt_reg[8]_0 ;
  wire \vid_reset_pulse_cnt_reg[9] ;
  wire \vid_reset_pulse_cnt_reg[9]_0 ;
  wire vid_vsync;
  wire vid_vsync_dly;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_rd_rst_busy_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED;
  wire [10:0]NLW_XPM_FIFO_SYNC_INST_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_XPM_FIFO_SYNC_INST_wr_data_count_UNCONNECTED;

  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "27" *) 
  (* READ_MODE = "fwft" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "27" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_video_pipeline_v_vid_in_axi4s_0_0_xpm_fifo_sync XPM_FIFO_SYNC_INST
       (.almost_empty(NLW_XPM_FIFO_SYNC_INST_almost_empty_UNCONNECTED),
        .almost_full(NLW_XPM_FIFO_SYNC_INST_almost_full_UNCONNECTED),
        .data_valid(NLW_XPM_FIFO_SYNC_INST_data_valid_UNCONNECTED),
        .dbiterr(NLW_XPM_FIFO_SYNC_INST_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty_i),
        .full(NLW_XPM_FIFO_SYNC_INST_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_XPM_FIFO_SYNC_INST_prog_empty_UNCONNECTED),
        .prog_full(NLW_XPM_FIFO_SYNC_INST_prog_full_UNCONNECTED),
        .rd_data_count(NLW_XPM_FIFO_SYNC_INST_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en_i),
        .rd_rst_busy(NLW_XPM_FIFO_SYNC_INST_rd_rst_busy_UNCONNECTED),
        .rst(vid_reset),
        .sbiterr(NLW_XPM_FIFO_SYNC_INST_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(underflow),
        .wr_ack(NLW_XPM_FIFO_SYNC_INST_wr_ack_UNCONNECTED),
        .wr_clk(aclk),
        .wr_data_count(NLW_XPM_FIFO_SYNC_INST_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  LUT1 #(
    .INIT(2'h1)) 
    XPM_FIFO_SYNC_INST_i_1
       (.I0(aresetn),
        .O(vid_reset));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h20)) 
    XPM_FIFO_SYNC_INST_i_2
       (.I0(m_axis_video_tready),
        .I1(empty_i),
        .I2(aclken),
        .O(rd_en_i));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    de_1_i_1
       (.I0(overflow),
        .I1(aresetn),
        .O(\gof.overflow_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_video_tvalid_INST_0
       (.I0(empty_i),
        .O(m_axis_video_tvalid));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[0]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[1]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(src_in),
        .O(\vid_reset_pulse_cnt_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[10]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[11]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[10]_0 ),
        .O(\vid_reset_pulse_cnt_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[11]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[12]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[11]_0 ),
        .O(\vid_reset_pulse_cnt_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[12]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[13]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[12]_0 ),
        .O(\vid_reset_pulse_cnt_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[13]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[14]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[13]_0 ),
        .O(\vid_reset_pulse_cnt_reg[14] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[14]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[15]_4 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[14]_0 ),
        .O(\vid_reset_pulse_cnt_reg[15] ));
  LUT5 #(
    .INIT(32'hFF01FF00)) 
    \vid_reset_pulse_cnt[15]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I3(vid_reset_pulse_cnt0),
        .I4(\vid_reset_pulse_cnt_reg[15]_4 ),
        .O(\vid_reset_pulse_cnt_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \vid_reset_pulse_cnt[15]_i_5 
       (.I0(overflow),
        .I1(vid_vsync_dly),
        .I2(vid_vsync),
        .O(vid_reset_pulse_cnt0));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[1]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[2]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[1]_0 ),
        .O(\vid_reset_pulse_cnt_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[2]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[3]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[2]_0 ),
        .O(\vid_reset_pulse_cnt_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[3]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[4]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[3]_0 ),
        .O(\vid_reset_pulse_cnt_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[4]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[5]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[4]_0 ),
        .O(\vid_reset_pulse_cnt_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[5]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[6]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[5]_0 ),
        .O(\vid_reset_pulse_cnt_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[6]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[7]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[6]_0 ),
        .O(\vid_reset_pulse_cnt_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[7]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[8]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[7]_0 ),
        .O(\vid_reset_pulse_cnt_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[8]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[9]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[8]_0 ),
        .O(\vid_reset_pulse_cnt_reg[9] ));
  LUT6 #(
    .INIT(64'hFFFFAAABFFFFAAA8)) 
    \vid_reset_pulse_cnt[9]_i_1 
       (.I0(\vid_reset_pulse_cnt_reg[10]_0 ),
        .I1(\vid_reset_pulse_cnt_reg[15]_1 ),
        .I2(\vid_reset_pulse_cnt_reg[15]_2 ),
        .I3(\vid_reset_pulse_cnt_reg[15]_3 ),
        .I4(vid_reset_pulse_cnt0),
        .I5(\vid_reset_pulse_cnt_reg[9]_0 ),
        .O(\vid_reset_pulse_cnt_reg[10] ));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v5_0_2_formatter" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_v_vid_in_axi4s_v5_0_2_formatter
   (de_1_reg_0,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    vtd_field_id,
    din,
    de_3,
    vtd_locked_reg_0,
    de_3_reg_0,
    vid_io_in_ce,
    vid_active_video,
    aclk,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    axis_enable,
    vid_data);
  output de_1_reg_0;
  output vtd_vblank;
  output vtd_hblank;
  output vtd_vsync;
  output vtd_hsync;
  output vtd_field_id;
  output [26:0]din;
  output de_3;
  output vtd_locked_reg_0;
  input de_3_reg_0;
  input vid_io_in_ce;
  input vid_active_video;
  input aclk;
  input vid_vblank;
  input vid_hblank;
  input vid_vsync;
  input vid_hsync;
  input vid_field_id;
  input axis_enable;
  input [23:0]vid_data;

  wire aclk;
  wire axis_enable;
  wire [23:0]data_1;
  wire [23:0]data_2;
  wire de_1_reg_0;
  wire de_2;
  wire de_3;
  wire de_3_reg_0;
  wire de_falling;
  wire [26:0]din;
  wire field_id_2;
  wire sof;
  wire sof0;
  wire v_blank_sync_1;
  wire v_blank_sync_2;
  wire vert_blanking_intvl_i_1_n_0;
  wire vert_blanking_intvl_reg_n_0;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_vblank;
  wire vid_vsync;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_locked_i_1_n_0;
  wire vtd_locked_reg_0;
  wire vtd_vblank;
  wire vtd_vsync;

  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[0] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[0]),
        .Q(data_1[0]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[10] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[10]),
        .Q(data_1[10]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[11] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[11]),
        .Q(data_1[11]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[12] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[12]),
        .Q(data_1[12]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[13] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[13]),
        .Q(data_1[13]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[14] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[14]),
        .Q(data_1[14]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[15] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[15]),
        .Q(data_1[15]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[16] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[16]),
        .Q(data_1[16]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[17] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[17]),
        .Q(data_1[17]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[18] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[18]),
        .Q(data_1[18]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[19] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[19]),
        .Q(data_1[19]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[1] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[1]),
        .Q(data_1[1]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[20] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[20]),
        .Q(data_1[20]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[21] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[21]),
        .Q(data_1[21]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[22] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[22]),
        .Q(data_1[22]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[23] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[23]),
        .Q(data_1[23]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[2] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[2]),
        .Q(data_1[2]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[3] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[3]),
        .Q(data_1[3]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[4] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[4]),
        .Q(data_1[4]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[5] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[5]),
        .Q(data_1[5]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[6] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[6]),
        .Q(data_1[6]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[7] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[7]),
        .Q(data_1[7]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[8] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[8]),
        .Q(data_1[8]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_1_reg[9] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_data[9]),
        .Q(data_1[9]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[0] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[0]),
        .Q(data_2[0]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[10] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[10]),
        .Q(data_2[10]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[11] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[11]),
        .Q(data_2[11]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[12] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[12]),
        .Q(data_2[12]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[13] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[13]),
        .Q(data_2[13]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[14] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[14]),
        .Q(data_2[14]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[15] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[15]),
        .Q(data_2[15]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[16] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[16]),
        .Q(data_2[16]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[17] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[17]),
        .Q(data_2[17]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[18] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[18]),
        .Q(data_2[18]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[19] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[19]),
        .Q(data_2[19]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[1] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[1]),
        .Q(data_2[1]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[20] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[20]),
        .Q(data_2[20]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[21] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[21]),
        .Q(data_2[21]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[22] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[22]),
        .Q(data_2[22]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[23] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[23]),
        .Q(data_2[23]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[2] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[2]),
        .Q(data_2[2]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[3] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[3]),
        .Q(data_2[3]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[4] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[4]),
        .Q(data_2[4]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[5] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[5]),
        .Q(data_2[5]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[6] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[6]),
        .Q(data_2[6]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[7] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[7]),
        .Q(data_2[7]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[8] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[8]),
        .Q(data_2[8]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_2_reg[9] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_1[9]),
        .Q(data_2[9]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[0] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[0]),
        .Q(din[0]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[10] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[10]),
        .Q(din[10]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[11] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[11]),
        .Q(din[11]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[12] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[12]),
        .Q(din[12]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[13] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[13]),
        .Q(din[13]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[14] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[14]),
        .Q(din[14]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[15] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[15]),
        .Q(din[15]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[16] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[16]),
        .Q(din[16]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[17] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[17]),
        .Q(din[17]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[18] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[18]),
        .Q(din[18]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[19] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[19]),
        .Q(din[19]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[1] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[1]),
        .Q(din[1]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[20] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[20]),
        .Q(din[20]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[21] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[21]),
        .Q(din[21]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[22] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[22]),
        .Q(din[22]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[23] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[23]),
        .Q(din[23]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[2] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[2]),
        .Q(din[2]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[3] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[3]),
        .Q(din[3]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[4] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[4]),
        .Q(din[4]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[5] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[5]),
        .Q(din[5]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[6] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[6]),
        .Q(din[6]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[7] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[7]),
        .Q(din[7]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[8] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[8]),
        .Q(din[8]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_3_reg[9] 
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(data_2[9]),
        .Q(din[9]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    de_1_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_active_video),
        .Q(de_1_reg_0),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    de_2_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(de_1_reg_0),
        .Q(de_2),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    de_3_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(de_2),
        .Q(de_3),
        .R(de_3_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    eol_i_1
       (.I0(de_2),
        .I1(de_1_reg_0),
        .O(de_falling));
  FDRE eol_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(de_falling),
        .Q(din[24]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    field_id_1_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_field_id),
        .Q(vtd_field_id),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    field_id_2_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vtd_field_id),
        .Q(field_id_2),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    field_id_3_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(field_id_2),
        .Q(din[26]),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    hblank_1_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_hblank),
        .Q(vtd_hblank),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    hsync_1_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_hsync),
        .Q(vtd_hsync),
        .R(de_3_reg_0));
  FDRE sof_1_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(sof),
        .Q(din[25]),
        .R(de_3_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sof_i_1
       (.I0(de_2),
        .I1(de_1_reg_0),
        .I2(vert_blanking_intvl_reg_n_0),
        .O(sof0));
  FDRE sof_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(sof0),
        .Q(sof),
        .R(de_3_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    v_blank_sync_2_i_1
       (.I0(vtd_vblank),
        .I1(vtd_vsync),
        .O(v_blank_sync_1));
  FDRE #(
    .INIT(1'b0)) 
    v_blank_sync_2_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(v_blank_sync_1),
        .Q(v_blank_sync_2),
        .R(de_3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    vblank_1_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_vblank),
        .Q(vtd_vblank),
        .R(de_3_reg_0));
  LUT6 #(
    .INIT(64'hB0B0FFB0F0F0F0F0)) 
    vert_blanking_intvl_i_1
       (.I0(de_2),
        .I1(de_1_reg_0),
        .I2(vert_blanking_intvl_reg_n_0),
        .I3(v_blank_sync_1),
        .I4(v_blank_sync_2),
        .I5(vid_io_in_ce),
        .O(vert_blanking_intvl_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vert_blanking_intvl_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vert_blanking_intvl_i_1_n_0),
        .Q(vert_blanking_intvl_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vsync_1_reg
       (.C(aclk),
        .CE(vid_io_in_ce),
        .D(vid_vsync),
        .Q(vtd_vsync),
        .R(de_3_reg_0));
  LUT6 #(
    .INIT(64'h00000000AAEA0000)) 
    vtd_locked_i_1
       (.I0(vtd_locked_reg_0),
        .I1(sof),
        .I2(vid_io_in_ce),
        .I3(din[25]),
        .I4(axis_enable),
        .I5(de_3_reg_0),
        .O(vtd_locked_i_1_n_0));
  FDRE vtd_locked_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vtd_locked_i_1_n_0),
        .Q(vtd_locked_reg_0),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_xpm_counter_updn__parameterized0
   (Q,
    CO,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 ,
    S,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    ram_empty_i,
    rd_en,
    \count_value_i_reg[3]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \count_value_i_reg[0]_0 ,
    ram_wr_en_pf,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [9:0]Q;
  output [0:0]CO;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input [8:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 ;
  input [8:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 ;
  input [0:0]S;
  input [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input ram_empty_i;
  input rd_en;
  input [1:0]\count_value_i_reg[3]_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input \count_value_i_reg[0]_0 ;
  input ram_wr_en_pf;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]CO;
  wire [9:0]Q;
  wire [0:0]S;
  wire clr_full;
  wire \count_value_i[3]_i_2__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [1:0]\count_value_i_reg[3]_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_1 ;
  wire \count_value_i_reg[3]_i_1__0_n_2 ;
  wire \count_value_i_reg[3]_i_1__0_n_3 ;
  wire \count_value_i_reg[3]_i_1__0_n_4 ;
  wire \count_value_i_reg[3]_i_1__0_n_5 ;
  wire \count_value_i_reg[3]_i_1__0_n_6 ;
  wire \count_value_i_reg[3]_i_1__0_n_7 ;
  wire \count_value_i_reg[7]_i_1__0_n_0 ;
  wire \count_value_i_reg[7]_i_1__0_n_1 ;
  wire \count_value_i_reg[7]_i_1__0_n_2 ;
  wire \count_value_i_reg[7]_i_1__0_n_3 ;
  wire \count_value_i_reg[7]_i_1__0_n_4 ;
  wire \count_value_i_reg[7]_i_1__0_n_5 ;
  wire \count_value_i_reg[7]_i_1__0_n_6 ;
  wire \count_value_i_reg[7]_i_1__0_n_7 ;
  wire \count_value_i_reg[9]_i_1__0_n_3 ;
  wire \count_value_i_reg[9]_i_1__0_n_6 ;
  wire \count_value_i_reg[9]_i_1__0_n_7 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire [8:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_3 ;
  wire [8:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_3 ;
  wire going_full1;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;
  wire [3:1]\NLW_count_value_i_reg[9]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_value_i_reg[9]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hABAA5455)) 
    \count_value_i[3]_i_2__0 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[3]_0 [0]),
        .I3(\count_value_i_reg[3]_0 [1]),
        .I4(Q[0]),
        .O(\count_value_i[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[3]_i_1__0_n_7 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[3]_i_1__0_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[3]_i_1__0_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[3]_i_1__0_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  CARRY4 \count_value_i_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__0_n_0 ,\count_value_i_reg[3]_i_1__0_n_1 ,\count_value_i_reg[3]_i_1__0_n_2 ,\count_value_i_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1__0_n_4 ,\count_value_i_reg[3]_i_1__0_n_5 ,\count_value_i_reg[3]_i_1__0_n_6 ,\count_value_i_reg[3]_i_1__0_n_7 }),
        .S({Q[3:1],\count_value_i[3]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[7]_i_1__0_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[7]_i_1__0_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[7]_i_1__0_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[7]_i_1__0_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  CARRY4 \count_value_i_reg[7]_i_1__0 
       (.CI(\count_value_i_reg[3]_i_1__0_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__0_n_0 ,\count_value_i_reg[7]_i_1__0_n_1 ,\count_value_i_reg[7]_i_1__0_n_2 ,\count_value_i_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__0_n_4 ,\count_value_i_reg[7]_i_1__0_n_5 ,\count_value_i_reg[7]_i_1__0_n_6 ,\count_value_i_reg[7]_i_1__0_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[9]_i_1__0_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i_reg[9]_i_1__0_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  CARRY4 \count_value_i_reg[9]_i_1__0 
       (.CI(\count_value_i_reg[7]_i_1__0_n_0 ),
        .CO({\NLW_count_value_i_reg[9]_i_1__0_CO_UNCONNECTED [3:1],\count_value_i_reg[9]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[9]_i_1__0_O_UNCONNECTED [3:2],\count_value_i_reg[9]_i_1__0_n_6 ,\count_value_i_reg[9]_i_1__0_n_7 }),
        .S({1'b0,1'b0,Q[9:8]}));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(CO),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2 
       (.CI(1'b0),
        .CO({CO,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_1 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_2 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({S,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 }));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3 
       (.CI(1'b0),
        .CO({going_full1,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_1 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_2 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED [3:0]),
        .S({\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_xpm_counter_updn__parameterized0_0
   (ram_empty_i0,
    Q,
    \count_value_i_reg[9]_0 ,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    CO,
    ram_wr_en_pf,
    ram_empty_i,
    \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ,
    S,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2 ,
    \count_value_i_reg[9]_1 ,
    wr_clk);
  output ram_empty_i0;
  output [9:0]Q;
  output [0:0]\count_value_i_reg[9]_0 ;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input [0:0]CO;
  input ram_wr_en_pf;
  input ram_empty_i;
  input [8:0]\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ;
  input [0:0]S;
  input [0:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2 ;
  input [0:0]\count_value_i_reg[9]_1 ;
  input wr_clk;

  wire [0:0]CO;
  wire [9:0]Q;
  wire [0:0]S;
  wire \count_value_i_reg[3]_i_1_n_0 ;
  wire \count_value_i_reg[3]_i_1_n_1 ;
  wire \count_value_i_reg[3]_i_1_n_2 ;
  wire \count_value_i_reg[3]_i_1_n_3 ;
  wire \count_value_i_reg[3]_i_1_n_4 ;
  wire \count_value_i_reg[3]_i_1_n_5 ;
  wire \count_value_i_reg[3]_i_1_n_6 ;
  wire \count_value_i_reg[3]_i_1_n_7 ;
  wire \count_value_i_reg[7]_i_1_n_0 ;
  wire \count_value_i_reg[7]_i_1_n_1 ;
  wire \count_value_i_reg[7]_i_1_n_2 ;
  wire \count_value_i_reg[7]_i_1_n_3 ;
  wire \count_value_i_reg[7]_i_1_n_4 ;
  wire \count_value_i_reg[7]_i_1_n_5 ;
  wire \count_value_i_reg[7]_i_1_n_6 ;
  wire \count_value_i_reg[7]_i_1_n_7 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire [0:0]\count_value_i_reg[9]_1 ;
  wire \count_value_i_reg[9]_i_1_n_3 ;
  wire \count_value_i_reg[9]_i_1_n_6 ;
  wire \count_value_i_reg[9]_i_1_n_7 ;
  wire [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [0:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire [8:0]\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3 ;
  wire going_empty1;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire wr_clk;
  wire [3:1]\NLW_count_value_i_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_value_i_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1_n_7 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[3]_i_1_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[9]_1 ));
  CARRY4 \count_value_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1_n_0 ,\count_value_i_reg[3]_i_1_n_1 ,\count_value_i_reg[3]_i_1_n_2 ,\count_value_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1_n_4 ,\count_value_i_reg[3]_i_1_n_5 ,\count_value_i_reg[3]_i_1_n_6 ,\count_value_i_reg[3]_i_1_n_7 }),
        .S({Q[3:1],S}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[7]_i_1_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[9]_1 ));
  CARRY4 \count_value_i_reg[7]_i_1 
       (.CI(\count_value_i_reg[3]_i_1_n_0 ),
        .CO({\count_value_i_reg[7]_i_1_n_0 ,\count_value_i_reg[7]_i_1_n_1 ,\count_value_i_reg[7]_i_1_n_2 ,\count_value_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1_n_4 ,\count_value_i_reg[7]_i_1_n_5 ,\count_value_i_reg[7]_i_1_n_6 ,\count_value_i_reg[7]_i_1_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[9]_i_1_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i_reg[9]_i_1_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[9]_1 ));
  CARRY4 \count_value_i_reg[9]_i_1 
       (.CI(\count_value_i_reg[7]_i_1_n_0 ),
        .CO({\NLW_count_value_i_reg[9]_i_1_CO_UNCONNECTED [3:1],\count_value_i_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[9]_i_1_O_UNCONNECTED [3:2],\count_value_i_reg[9]_i_1_n_6 ,\count_value_i_reg[9]_i_1_n_7 }),
        .S({1'b0,1'b0,Q[9:8]}));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2 ),
        .O(\count_value_i_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(CO),
        .I3(ram_wr_en_pf),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ));
  CARRY4 \gen_pntr_flags_cc.ram_empty_i_reg_i_2 
       (.CI(1'b0),
        .CO({going_empty1,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1 ,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2 ,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\gen_pntr_flags_cc.ram_empty_i_reg_0 ,\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_xpm_counter_updn__parameterized1
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    S,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.ram_empty_i_reg_i_2 ,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [8:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output [0:0]S;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\gen_pntr_flags_cc.ram_empty_i_reg_i_2 ;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [8:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire \count_value_i_reg_n_0_[9] ;
  wire [0:0]\gen_pntr_flags_cc.ram_empty_i_reg_i_2 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__0 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__0 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\count_value_i_reg_n_0_[9] ),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[9] ),
        .R(\count_value_i_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(\count_value_i_reg_n_0_[9] ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2 ),
        .O(S));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_xpm_counter_updn__parameterized1_1
   (Q,
    \count_value_i_reg[9]_0 ,
    ram_wr_en_pf,
    wr_en,
    rst_d1,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[5]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3 ,
    wr_clk);
  output [8:0]Q;
  output [0:0]\count_value_i_reg[9]_0 ;
  input ram_wr_en_pf;
  input wr_en;
  input rst_d1;
  input [0:0]\count_value_i_reg[0]_0 ;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3 ;
  input wr_clk;

  wire [8:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire \count_value_i_reg_n_0_[9] ;
  wire [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3 ;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(rst_d1),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(\count_value_i_reg[5]_0 ),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\count_value_i_reg_n_0_[9] ),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[9] ),
        .R(\count_value_i_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(\count_value_i_reg_n_0_[9] ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3 ),
        .O(\count_value_i_reg[9]_0 ));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "1024" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "27648" *) (* FIFO_WRITE_DEPTH = "1024" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "1019" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "1019" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "11" *) 
(* RD_DC_WIDTH_EXT = "11" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "10" *) (* READ_DATA_WIDTH = "27" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "27" *) 
(* WR_DATA_COUNT_WIDTH = "11" *) (* WR_DC_WIDTH_EXT = "11" *) (* WR_DEPTH_LOG = "10" *) 
(* WR_PNTR_WIDTH = "10" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "5" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [26:0]din;
  output full;
  output full_n;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [26:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:0]curr_fwft_state;
  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire empty_fwft_i0;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [9:0]rd_pntr_ext;
  wire rdp_inst_n_11;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire [9:0]wr_pntr_ext;
  wire wr_rst_busy;
  wire wrp_inst_n_11;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire xpm_fifo_rst_inst_n_4;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [26:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full = \<const0> ;
  assign full_n = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_11),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "27" *) 
  (* BYTE_WRITE_WIDTH_B = "27" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "26" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "27" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "27648" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "27" *) 
  (* P_MIN_WIDTH_DATA_A = "27" *) 
  (* P_MIN_WIDTH_DATA_B = "27" *) 
  (* P_MIN_WIDTH_DATA_ECC = "27" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "27" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "27" *) 
  (* P_WIDTH_COL_WRITE_B = "27" *) 
  (* READ_DATA_WIDTH_A = "27" *) 
  (* READ_DATA_WIDTH_B = "27" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "27" *) 
  (* WRITE_DATA_WIDTH_B = "27" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "28" *) 
  (* rstb_loop_iter = "28" *) 
  design_video_pipeline_v_vid_in_axi4s_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [26:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdpp1_inst_n_9),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  design_video_pipeline_v_vid_in_axi4s_0_0_xpm_counter_updn__parameterized0 rdp_inst
       (.CO(leaving_empty0),
        .Q(rd_pntr_ext),
        .S(wrp_inst_n_11),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_9),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[3]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_11),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (wrpp1_inst_n_9),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_0 (wr_pntr_ext[8:0]),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8}),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  design_video_pipeline_v_vid_in_axi4s_0_0_xpm_counter_updn__parameterized1 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_9),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8}),
        .S(rdpp1_inst_n_10),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg_i_2 (wr_pntr_ext[9]),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  design_video_pipeline_v_vid_in_axi4s_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .\count_value_i_reg[9] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  design_video_pipeline_v_vid_in_axi4s_0_0_xpm_counter_updn__parameterized0_0 wrp_inst
       (.CO(leaving_empty0),
        .Q(wr_pntr_ext),
        .S(xpm_fifo_rst_inst_n_4),
        .\count_value_i_reg[9]_0 (wrp_inst_n_11),
        .\count_value_i_reg[9]_1 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2 (rd_pntr_ext[9]),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_9),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 (rdpp1_inst_n_10),
        .\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8}),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .wr_clk(wr_clk));
  design_video_pipeline_v_vid_in_axi4s_0_0_xpm_counter_updn__parameterized1_1 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[9]_0 (wrpp1_inst_n_9),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3 (rd_pntr_ext[9]),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  design_video_pipeline_v_vid_in_axi4s_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .S(xpm_fifo_rst_inst_n_4),
        .\count_value_i_reg[3] (wr_pntr_ext[0]),
        .empty(empty),
        .\gof.overflow_i_reg (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .overflow_i0(overflow_i0),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_xpm_fifo_reg_bit
   (rst_d1,
    ram_wr_en_pf,
    clr_full,
    Q,
    wr_clk,
    wr_en,
    \count_value_i_reg[9] ,
    rst);
  output rst_d1;
  output ram_wr_en_pf;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input wr_en;
  input \count_value_i_reg[9] ;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire \count_value_i_reg[9] ;
  wire ram_wr_en_pf;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(rst_d1),
        .I2(Q),
        .I3(\count_value_i_reg[9] ),
        .O(ram_wr_en_pf));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_xpm_fifo_rst
   (overflow_i0,
    Q,
    wr_rst_busy,
    underflow_i0,
    S,
    rst,
    \gof.overflow_i_reg ,
    rst_d1,
    wr_en,
    empty,
    rd_en,
    \count_value_i_reg[3] ,
    wr_clk);
  output overflow_i0;
  output [0:0]Q;
  output wr_rst_busy;
  output underflow_i0;
  output [0:0]S;
  input rst;
  input \gof.overflow_i_reg ;
  input rst_d1;
  input wr_en;
  input empty;
  input rd_en;
  input [0:0]\count_value_i_reg[3] ;
  input wr_clk;

  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]\count_value_i_reg[3] ;
  wire empty;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire \gof.overflow_i_reg ;
  wire overflow_i0;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \count_value_i[3]_i_2 
       (.I0(\gof.overflow_i_reg ),
        .I1(Q),
        .I2(rst_d1),
        .I3(wr_en),
        .I4(\count_value_i_reg[3] ),
        .O(S));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(\gof.overflow_i_reg ),
        .I1(Q),
        .I2(rst_d1),
        .I3(wr_en),
        .O(overflow_i0));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(empty),
        .I1(Q),
        .I2(rd_en),
        .O(underflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(Q),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) (* ORIG_REF_NAME = "xpm_fifo_sync" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "1" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "11" *) (* READ_DATA_WIDTH = "27" *) 
(* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "27" *) (* WR_DATA_COUNT_WIDTH = "11" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_xpm_fifo_sync
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [26:0]din;
  output full;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [26:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire overflow;
  wire rd_en;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "27648" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "27" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "27" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_DEPTH_LOG = "10" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  design_video_pipeline_v_vid_in_axi4s_0_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "27" *) (* BYTE_WRITE_WIDTH_B = "27" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "27648" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "1024" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "27" *) (* P_MIN_WIDTH_DATA_A = "27" *) (* P_MIN_WIDTH_DATA_B = "27" *) 
(* P_MIN_WIDTH_DATA_ECC = "27" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "27" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) 
(* P_WIDTH_ADDR_READ_B = "10" *) (* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) 
(* P_WIDTH_COL_WRITE_A = "27" *) (* P_WIDTH_COL_WRITE_B = "27" *) (* READ_DATA_WIDTH_A = "27" *) 
(* READ_DATA_WIDTH_B = "27" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "27" *) (* WRITE_DATA_WIDTH_B = "27" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "28" *) 
(* rstb_loop_iter = "28" *) 
module design_video_pipeline_v_vid_in_axi4s_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [26:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [26:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [26:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [26:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [26:0]dina;
  wire [26:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED ;
  wire [31:27]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d27" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "26" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d27" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "26" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "27648" *) 
  (* RTL_RAM_NAME = "inst/COUPLER_INST/generate_sync_fifo.FIFO_INST/XPM_FIFO_SYNC_INST/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED [31:27],doutb}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(wea),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ),
        .WEA({1'b1,1'b1,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
