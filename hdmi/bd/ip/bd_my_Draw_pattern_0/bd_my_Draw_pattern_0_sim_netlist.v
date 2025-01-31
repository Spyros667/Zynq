// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
// Date        : Wed Jan 29 08:44:36 2025
// Host        : Electryc running 64-bit Gentoo Linux
// Command     : write_verilog -force -mode funcsim
//               /mnt/CONTMP/home/ladon/contmp/zynq/hdmi/bd/ip/bd_my_Draw_pattern_0/bd_my_Draw_pattern_0_sim_netlist.v
// Design      : bd_my_Draw_pattern_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_my_Draw_pattern_0,hdmi_test,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "hdmi_test,Vivado 2024.2.1" *) 
(* NotValidForBitStream *)
module bd_my_Draw_pattern_0
   (CLK,
    RESETN,
    RED,
    GREEN,
    BLUE,
    HSYNC,
    VSYNC,
    PCLK,
    DE);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESETN;
  output [4:0]RED;
  output [5:0]GREEN;
  output [4:0]BLUE;
  output HSYNC;
  output VSYNC;
  output PCLK;
  output DE;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire RESETN;
  wire VSYNC;

  assign BLUE[4] = \<const0> ;
  assign BLUE[3] = \<const0> ;
  assign BLUE[2] = \<const0> ;
  assign BLUE[1] = \<const0> ;
  assign BLUE[0] = \<const0> ;
  assign DE = \<const0> ;
  assign GREEN[5] = \<const0> ;
  assign GREEN[4] = \<const0> ;
  assign GREEN[3] = \<const0> ;
  assign GREEN[2] = \<const0> ;
  assign GREEN[1] = \<const0> ;
  assign GREEN[0] = \<const0> ;
  assign HSYNC = VSYNC;
  assign PCLK = CLK;
  assign RED[4] = \<const1> ;
  assign RED[3] = \<const1> ;
  assign RED[2] = \<const1> ;
  assign RED[1] = \<const1> ;
  assign RED[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  bd_my_Draw_pattern_0_hdmi_test inst
       (.CLK(CLK),
        .RESETN(RESETN),
        .VSYNC(VSYNC));
endmodule

(* ORIG_REF_NAME = "hdmi_test" *) 
module bd_my_Draw_pattern_0_hdmi_test
   (VSYNC,
    RESETN,
    CLK);
  output VSYNC;
  input RESETN;
  input CLK;

  wire CLK;
  wire RESETN;
  wire VSYNC;

  FDRE HSYNC_reg
       (.C(CLK),
        .CE(1'b1),
        .D(RESETN),
        .Q(VSYNC),
        .R(1'b0));
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
