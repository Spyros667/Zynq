// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
// Date        : Fri Jan 31 17:06:06 2025
// Host        : Electryc running 64-bit Gentoo Linux
// Command     : write_verilog -force -mode synth_stub
//               /mnt/CONTMP/home/ladon/contmp/zynq/hdmi/bd/ip/bd_util_vector_logic_0_0/bd_util_vector_logic_0_0_stub.v
// Design      : bd_util_vector_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_util_vector_logic_0_0,util_vector_logic_v2_0_4_util_vector_logic,{}" *) (* CORE_GENERATION_INFO = "bd_util_vector_logic_0_0,util_vector_logic_v2_0_4_util_vector_logic,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=util_vector_logic,x_ipVersion=2.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_OPERATION=not,C_SIZE=4}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "util_vector_logic_v2_0_4_util_vector_logic,Vivado 2024.2.1" *) 
module bd_util_vector_logic_0_0(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[3:0],Res[3:0]" */;
  input [3:0]Op1;
  output [3:0]Res;
endmodule
