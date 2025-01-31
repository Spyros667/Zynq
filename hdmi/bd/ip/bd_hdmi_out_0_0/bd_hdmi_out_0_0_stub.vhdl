-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Wed Jan 29 08:44:36 2025
-- Host        : Electryc running 64-bit Gentoo Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /mnt/CONTMP/home/ladon/contmp/zynq/hdmi/bd/ip/bd_hdmi_out_0_0/bd_hdmi_out_0_0_stub.vhdl
-- Design      : bd_hdmi_out_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_hdmi_out_0_0 is
  Port ( 
    lcd_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmi_intn : inout STD_LOGIC;
    lcd_pclk : out STD_LOGIC;
    lcd_de : out STD_LOGIC;
    lcd_vsync : out STD_LOGIC;
    lcd_hsync : out STD_LOGIC;
    in_clk : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_hdmi_out_0_0 : entity is "bd_hdmi_out_0_0,hdmi_out,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_hdmi_out_0_0 : entity is "bd_hdmi_out_0_0,hdmi_out,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=hdmi_out,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_hdmi_out_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_hdmi_out_0_0 : entity is "module_ref";
end bd_hdmi_out_0_0;

architecture stub of bd_hdmi_out_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "lcd_data[15:0],hdmi_intn,lcd_pclk,lcd_de,lcd_vsync,lcd_hsync,in_clk";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of in_clk : signal is "xilinx.com:signal:clock:1.0 in_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of in_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of in_clk : signal is "XIL_INTERFACENAME in_clk, FREQ_HZ 115200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Pixel_clock_clk_out1, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "hdmi_out,Vivado 2024.2.1";
begin
end;
