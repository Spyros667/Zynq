// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
// Date        : Wed Jan 29 08:44:36 2025
// Host        : Electryc running 64-bit Gentoo Linux
// Command     : write_verilog -force -mode synth_stub
//               /mnt/CONTMP/home/ladon/contmp/zynq/hdmi/bd/ip/bd_hdmi_out_0_0/bd_hdmi_out_0_0_stub.v
// Design      : bd_hdmi_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_hdmi_out_0_0,hdmi_out,{}" *) (* CORE_GENERATION_INFO = "bd_hdmi_out_0_0,hdmi_out,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=hdmi_out,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "hdmi_out,Vivado 2024.2.1" *) 
module bd_hdmi_out_0_0(lcd_data, hdmi_intn, lcd_pclk, lcd_de, lcd_vsync, 
  lcd_hsync, in_clk)
/* synthesis syn_black_box black_box_pad_pin="lcd_data[15:0],hdmi_intn,lcd_de,lcd_vsync,lcd_hsync" */
/* synthesis syn_force_seq_prim="lcd_pclk" */
/* synthesis syn_force_seq_prim="in_clk" */;
  output [15:0]lcd_data;
  inout hdmi_intn;
  output lcd_pclk /* synthesis syn_isclock = 1 */;
  output lcd_de;
  output lcd_vsync;
  output lcd_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_clk, FREQ_HZ 115200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Pixel_clock_clk_out1, INSERT_VIP 0" *) input in_clk /* synthesis syn_isclock = 1 */;
endmodule
