//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
//Date        : Sat Feb  1 07:35:07 2025
//Host        : Electryc running 64-bit Gentoo Linux
//Command     : generate_target bd_wrapper.bd
//Design      : bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_wrapper
   (BP,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    HDMI_DATA,
    HDMI_DE,
    HDMI_HSYNC,
    HDMI_INTn,
    HDMI_PCLK,
    HDMI_VSYNC,
    I2C0_scl_io,
    I2C0_sda_io,
    LEDS,
    SW);
  output [0:0]BP;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [15:0]HDMI_DATA;
  output HDMI_DE;
  output HDMI_HSYNC;
  inout HDMI_INTn;
  output HDMI_PCLK;
  output HDMI_VSYNC;
  inout I2C0_scl_io;
  inout I2C0_sda_io;
  output [2:0]LEDS;
  input [3:0]SW;

  wire [0:0]BP;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [15:0]HDMI_DATA;
  wire HDMI_DE;
  wire HDMI_HSYNC;
  wire HDMI_INTn;
  wire HDMI_PCLK;
  wire HDMI_VSYNC;
  wire I2C0_scl_i;
  wire I2C0_scl_io;
  wire I2C0_scl_o;
  wire I2C0_scl_t;
  wire I2C0_sda_i;
  wire I2C0_sda_io;
  wire I2C0_sda_o;
  wire I2C0_sda_t;
  wire [2:0]LEDS;
  wire [3:0]SW;

  IOBUF I2C0_scl_iobuf
       (.I(I2C0_scl_o),
        .IO(I2C0_scl_io),
        .O(I2C0_scl_i),
        .T(I2C0_scl_t));
  IOBUF I2C0_sda_iobuf
       (.I(I2C0_sda_o),
        .IO(I2C0_sda_io),
        .O(I2C0_sda_i),
        .T(I2C0_sda_t));
  bd bd_i
       (.BP(BP),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .HDMI_DATA(HDMI_DATA),
        .HDMI_DE(HDMI_DE),
        .HDMI_HSYNC(HDMI_HSYNC),
        .HDMI_INTn(HDMI_INTn),
        .HDMI_PCLK(HDMI_PCLK),
        .HDMI_VSYNC(HDMI_VSYNC),
        .I2C0_scl_i(I2C0_scl_i),
        .I2C0_scl_o(I2C0_scl_o),
        .I2C0_scl_t(I2C0_scl_t),
        .I2C0_sda_i(I2C0_sda_i),
        .I2C0_sda_o(I2C0_sda_o),
        .I2C0_sda_t(I2C0_sda_t),
        .LEDS(LEDS),
        .SW(SW));
endmodule
