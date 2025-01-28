//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
//Date        : Tue Jan 28 19:30:02 2025
//Host        : Electryc running 64-bit Gentoo Linux
//Command     : generate_target bd.bd
//Design      : bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Disabled_imp_MNCIFI
   (CLK,
    HDMI_DATA,
    HDMI_DE,
    HDMI_HSYNC,
    HDMI_PCLK,
    HDMI_VSYNC,
    RESETN);
  input CLK;
  output [15:0]HDMI_DATA;
  output HDMI_DE;
  output HDMI_HSYNC;
  output HDMI_PCLK;
  output HDMI_VSYNC;
  input RESETN;

  wire CLK;
  wire [5:0]GREEN_1;
  wire [15:0]HDMI_DATA;
  wire HDMI_DE;
  wire HDMI_HSYNC;
  wire HDMI_PCLK;
  wire HDMI_VSYNC;
  wire [4:0]RED_1;
  wire RESETN;
  wire [4:0]my_Draw_pattern_BLUE;

  RGB_imp_L56ZKM RGB
       (.BLUE(my_Draw_pattern_BLUE),
        .GREEN(GREEN_1),
        .HDMI_DATA(HDMI_DATA),
        .RED(RED_1));
  bd_my_Draw_pattern_0 my_Draw_pattern
       (.BLUE(my_Draw_pattern_BLUE),
        .CLK(CLK),
        .DE(HDMI_DE),
        .GREEN(GREEN_1),
        .HSYNC(HDMI_HSYNC),
        .PCLK(HDMI_PCLK),
        .RED(RED_1),
        .RESETN(RESETN),
        .VSYNC(HDMI_VSYNC));
endmodule

module RGB_LED_imp_O6DMCI
   (Blue,
    Green,
    RGB,
    Red);
  input [0:0]Blue;
  input [0:0]Green;
  output [2:0]RGB;
  input [0:0]Red;

  wire [0:0]Blue;
  wire [0:0]Green;
  wire [2:0]RGB;
  wire [0:0]Red;
  wire [2:0]concatenation_dout;

  bd_NOT_gate_0 NOT_gate
       (.Op1(concatenation_dout),
        .Res(RGB));
  bd_RGB_concat_0 RGB_concat
       (.In0(Green),
        .In1(Blue),
        .In2(Red),
        .dout(concatenation_dout));
endmodule

module RGB_imp_L56ZKM
   (BLUE,
    GREEN,
    HDMI_DATA,
    RED);
  input [4:0]BLUE;
  input [5:0]GREEN;
  output [15:0]HDMI_DATA;
  input [4:0]RED;

  wire [4:0]BLUE;
  wire [5:0]GREEN;
  wire [15:0]HDMI_DATA;
  wire [4:0]RED;

  bd_xlconcat_0_0 xlconcat_0
       (.In0(RED),
        .In1(GREEN),
        .In2(BLUE),
        .dout(HDMI_DATA));
endmodule

module Switches_imp_4FIHWM
   (SW,
    SW0,
    SW1,
    SW2,
    SW3);
  input [3:0]SW;
  output [0:0]SW0;
  output [0:0]SW1;
  output [0:0]SW2;
  output [0:0]SW3;

  wire [3:0]SW;
  wire [0:0]SW0;
  wire [0:0]SW1;
  wire [0:0]SW2;
  wire [0:0]SW3;

  bd_xlslice_0_0 xlslice_0
       (.Din(SW),
        .Dout(SW0));
  bd_xlslice_1_0 xlslice_1
       (.Din(SW),
        .Dout(SW1));
  bd_xlslice_2_0 xlslice_2
       (.Din(SW),
        .Dout(SW2));
  bd_xlslice_3_0 xlslice_3
       (.Din(SW),
        .Dout(SW3));
endmodule

(* CORE_GENERATION_INFO = "bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=17,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd.hwdef" *) 
module bd
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
    I2C0_scl_i,
    I2C0_scl_o,
    I2C0_scl_t,
    I2C0_sda_i,
    I2C0_sda_o,
    I2C0_sda_t,
    LEDS,
    SW);
  output BP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  output [15:0]HDMI_DATA;
  output HDMI_DE;
  output HDMI_HSYNC;
  inout HDMI_INTn;
  output HDMI_PCLK;
  output HDMI_VSYNC;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SCL_I" *) (* X_INTERFACE_MODE = "Master" *) input I2C0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SCL_O" *) output I2C0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SCL_T" *) output I2C0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SDA_I" *) input I2C0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SDA_O" *) output I2C0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 I2C0 SDA_T" *) output I2C0_sda_t;
  output [2:0]LEDS;
  input [3:0]SW;

  wire [0:0]Blue_1;
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
  wire [0:0]GND_dout;
  wire [0:0]Green_1;
  wire [15:0]HDMI_DATA;
  wire HDMI_DE;
  wire HDMI_HSYNC;
  wire HDMI_PCLK;
  wire HDMI_VSYNC;
  wire I2C0_scl_i;
  wire I2C0_scl_o;
  wire I2C0_scl_t;
  wire I2C0_sda_i;
  wire I2C0_sda_o;
  wire I2C0_sda_t;
  wire [2:0]LEDS;
  wire Pixel_clock_clk_out1;
  wire [0:0]Red_1;
  wire [3:0]SW;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;

  Disabled_imp_MNCIFI Disabled
       (.CLK(GND_dout),
        .RESETN(GND_dout));
  bd_GND_0 GND
       (.dout(GND_dout));
  bd_Pixel_clock_0 Pixel_clock
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(Pixel_clock_clk_out1),
        .resetn(proc_sys_reset_0_peripheral_aresetn));
  RGB_LED_imp_O6DMCI RGB_LED
       (.Blue(Blue_1),
        .Green(Green_1),
        .RGB(LEDS),
        .Red(Red_1));
  Switches_imp_4FIHWM Switches
       (.SW(SW),
        .SW0(Red_1),
        .SW1(Green_1),
        .SW2(Blue_1));
  bd_hdmi_out_0_0 hdmi_out_0
       (.in_clk(Pixel_clock_clk_out1),
        .lcd_data(HDMI_DATA),
        .lcd_de(HDMI_DE),
        .lcd_hsync(HDMI_HSYNC),
        .lcd_pclk(HDMI_PCLK),
        .lcd_vsync(HDMI_VSYNC));
  bd_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  bd_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr),
        .DDR_BankAddr(DDR_ba),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm),
        .DDR_DQ(DDR_dq),
        .DDR_DQS(DDR_dqs_p),
        .DDR_DQS_n(DDR_dqs_n),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .I2C0_SCL_I(I2C0_scl_i),
        .I2C0_SCL_O(I2C0_scl_o),
        .I2C0_SCL_T(I2C0_scl_t),
        .I2C0_SDA_I(I2C0_sda_i),
        .I2C0_SDA_O(I2C0_sda_o),
        .I2C0_SDA_T(I2C0_sda_t),
        .MIO(FIXED_IO_mio),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
endmodule
