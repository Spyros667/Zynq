// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
// Date        : Wed Jan 29 08:44:36 2025
// Host        : Electryc running 64-bit Gentoo Linux
// Command     : write_verilog -force -mode funcsim
//               /mnt/CONTMP/home/ladon/contmp/zynq/hdmi/bd/ip/bd_hdmi_out_0_0/bd_hdmi_out_0_0_sim_netlist.v
// Design      : bd_hdmi_out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_hdmi_out_0_0,hdmi_out,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "hdmi_out,Vivado 2024.2.1" *) 
(* NotValidForBitStream *)
module bd_hdmi_out_0_0
   (lcd_data,
    hdmi_intn,
    lcd_pclk,
    lcd_de,
    lcd_vsync,
    lcd_hsync,
    in_clk);
  output [15:0]lcd_data;
  inout hdmi_intn;
  output lcd_pclk;
  output lcd_de;
  output lcd_vsync;
  output lcd_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_clk, FREQ_HZ 115200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Pixel_clock_clk_out1, INSERT_VIP 0" *) input in_clk;

  wire in_clk;
  wire [15:2]\^lcd_data ;
  wire lcd_de;
  wire lcd_hsync;
  wire lcd_vsync;

  assign lcd_data[15] = \^lcd_data [15];
  assign lcd_data[14] = \^lcd_data [13];
  assign lcd_data[13] = \^lcd_data [13];
  assign lcd_data[12] = \^lcd_data [13];
  assign lcd_data[11] = \^lcd_data [13];
  assign lcd_data[10] = \^lcd_data [10];
  assign lcd_data[9] = \^lcd_data [8];
  assign lcd_data[8] = \^lcd_data [8];
  assign lcd_data[7] = \^lcd_data [8];
  assign lcd_data[6] = \^lcd_data [8];
  assign lcd_data[5] = \^lcd_data [8];
  assign lcd_data[4] = \^lcd_data [4];
  assign lcd_data[3] = \^lcd_data [2];
  assign lcd_data[2] = \^lcd_data [2];
  assign lcd_data[1] = \^lcd_data [2];
  assign lcd_data[0] = \^lcd_data [2];
  assign lcd_pclk = in_clk;
  bd_hdmi_out_0_0_hdmi_out inst
       (.in_clk(in_clk),
        .lcd_data({\^lcd_data [15],\^lcd_data [13],\^lcd_data [10],\^lcd_data [8],\^lcd_data [4],\^lcd_data [2]}),
        .lcd_de(lcd_de),
        .lcd_hsync(lcd_hsync),
        .lcd_vsync(lcd_vsync));
endmodule

(* ORIG_REF_NAME = "hdmi_out" *) 
module bd_hdmi_out_0_0_hdmi_out
   (lcd_data,
    lcd_de,
    lcd_vsync,
    lcd_hsync,
    in_clk);
  output [5:0]lcd_data;
  output lcd_de;
  output lcd_vsync;
  output lcd_hsync;
  input in_clk;

  wire blanking;
  wire blanking_i_1_n_0;
  wire blanking_i_2_n_0;
  wire [23:6]color;
  wire [10:0]hcounter;
  wire \hcounter[10]_i_3_n_0 ;
  wire \hcounter[10]_i_4_n_0 ;
  wire \hcounter[10]_i_5_n_0 ;
  wire \hcounter[10]_i_6_n_0 ;
  wire \hcounter[4]_i_1_n_0 ;
  wire \hcounter[9]_i_2_n_0 ;
  wire hsync;
  wire hsync_i_1_n_0;
  wire hsync_i_2_n_0;
  wire hsync_i_3_n_0;
  wire hsync_i_4_n_0;
  wire in_clk;
  wire [5:0]lcd_data;
  wire \lcd_data[15]_i_2_n_0 ;
  wire \lcd_data[15]_i_3_n_0 ;
  wire \lcd_data[4]_i_2_n_0 ;
  wire lcd_de;
  wire lcd_hsync;
  wire lcd_vsync;
  wire p_0_in;
  wire [10:0]plusOp;
  wire [10:0]vcounter;
  wire \vcounter[0]_i_1_n_0 ;
  wire \vcounter[10]_i_1_n_0 ;
  wire \vcounter[10]_i_2_n_0 ;
  wire \vcounter[10]_i_3_n_0 ;
  wire \vcounter[10]_i_4_n_0 ;
  wire \vcounter[10]_i_5_n_0 ;
  wire \vcounter[10]_i_6_n_0 ;
  wire \vcounter[1]_i_1_n_0 ;
  wire \vcounter[2]_i_1_n_0 ;
  wire \vcounter[3]_i_1_n_0 ;
  wire \vcounter[3]_i_2_n_0 ;
  wire \vcounter[3]_i_3_n_0 ;
  wire \vcounter[3]_i_4_n_0 ;
  wire \vcounter[4]_i_1_n_0 ;
  wire \vcounter[5]_i_1_n_0 ;
  wire \vcounter[6]_i_1_n_0 ;
  wire \vcounter[7]_i_1_n_0 ;
  wire \vcounter[8]_i_1_n_0 ;
  wire \vcounter[9]_i_1_n_0 ;
  wire vsync;
  wire vsync_i_1_n_0;
  wire vsync_i_2_n_0;
  wire vsync_i_3_n_0;
  wire vsync_i_4_n_0;

  LUT6 #(
    .INIT(64'h5554FFFF55545554)) 
    blanking_i_1
       (.I0(\hcounter[10]_i_3_n_0 ),
        .I1(hcounter[6]),
        .I2(hcounter[7]),
        .I3(hcounter[8]),
        .I4(blanking_i_2_n_0),
        .I5(vcounter[10]),
        .O(blanking_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000F0007000F)) 
    blanking_i_2
       (.I0(vcounter[5]),
        .I1(vcounter[4]),
        .I2(vcounter[9]),
        .I3(vcounter[8]),
        .I4(vcounter[7]),
        .I5(vcounter[6]),
        .O(blanking_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    blanking_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(blanking_i_1_n_0),
        .Q(blanking),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \hcounter[0]_i_1 
       (.I0(hcounter[0]),
        .O(plusOp[0]));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \hcounter[10]_i_1 
       (.I0(\hcounter[10]_i_3_n_0 ),
        .I1(\hcounter[10]_i_4_n_0 ),
        .I2(hcounter[4]),
        .I3(hcounter[6]),
        .I4(hcounter[5]),
        .I5(\hcounter[10]_i_5_n_0 ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hcounter[10]_i_2 
       (.I0(hcounter[10]),
        .I1(hcounter[6]),
        .I2(hcounter[7]),
        .I3(hcounter[8]),
        .I4(hcounter[9]),
        .I5(\hcounter[10]_i_6_n_0 ),
        .O(plusOp[10]));
  LUT2 #(
    .INIT(4'h7)) 
    \hcounter[10]_i_3 
       (.I0(hcounter[10]),
        .I1(hcounter[9]),
        .O(\hcounter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \hcounter[10]_i_4 
       (.I0(hcounter[8]),
        .I1(hcounter[7]),
        .O(\hcounter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \hcounter[10]_i_5 
       (.I0(hcounter[2]),
        .I1(hcounter[1]),
        .I2(hcounter[0]),
        .I3(hcounter[3]),
        .O(\hcounter[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hcounter[10]_i_6 
       (.I0(hcounter[2]),
        .I1(hcounter[1]),
        .I2(hcounter[0]),
        .I3(hcounter[3]),
        .I4(hcounter[4]),
        .I5(hcounter[5]),
        .O(\hcounter[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcounter[1]_i_1 
       (.I0(hcounter[1]),
        .I1(hcounter[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hcounter[2]_i_1 
       (.I0(hcounter[2]),
        .I1(hcounter[1]),
        .I2(hcounter[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hcounter[3]_i_1 
       (.I0(hcounter[3]),
        .I1(hcounter[0]),
        .I2(hcounter[1]),
        .I3(hcounter[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \hcounter[4]_i_1 
       (.I0(hcounter[4]),
        .I1(hcounter[3]),
        .I2(hcounter[0]),
        .I3(hcounter[1]),
        .I4(hcounter[2]),
        .O(\hcounter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hcounter[5]_i_1 
       (.I0(hcounter[5]),
        .I1(hcounter[2]),
        .I2(hcounter[1]),
        .I3(hcounter[0]),
        .I4(hcounter[3]),
        .I5(hcounter[4]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \hcounter[6]_i_1 
       (.I0(hcounter[6]),
        .I1(hcounter[5]),
        .I2(hcounter[4]),
        .I3(\hcounter[10]_i_5_n_0 ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \hcounter[7]_i_1 
       (.I0(hcounter[7]),
        .I1(hcounter[6]),
        .I2(hcounter[5]),
        .I3(hcounter[4]),
        .I4(\hcounter[10]_i_5_n_0 ),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \hcounter[8]_i_1 
       (.I0(hcounter[8]),
        .I1(\hcounter[10]_i_5_n_0 ),
        .I2(hcounter[4]),
        .I3(hcounter[5]),
        .I4(hcounter[6]),
        .I5(hcounter[7]),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hcounter[9]_i_1 
       (.I0(hcounter[9]),
        .I1(hcounter[7]),
        .I2(hcounter[6]),
        .I3(hcounter[5]),
        .I4(\hcounter[9]_i_2_n_0 ),
        .I5(hcounter[8]),
        .O(plusOp[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \hcounter[9]_i_2 
       (.I0(hcounter[4]),
        .I1(hcounter[3]),
        .I2(hcounter[0]),
        .I3(hcounter[1]),
        .I4(hcounter[2]),
        .O(\hcounter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[0] 
       (.C(in_clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(hcounter[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[10] 
       (.C(in_clk),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(hcounter[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[1] 
       (.C(in_clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(hcounter[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[2] 
       (.C(in_clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(hcounter[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[3] 
       (.C(in_clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(hcounter[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[4] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\hcounter[4]_i_1_n_0 ),
        .Q(hcounter[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[5] 
       (.C(in_clk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(hcounter[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[6] 
       (.C(in_clk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(hcounter[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[7] 
       (.C(in_clk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(hcounter[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[8] 
       (.C(in_clk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(hcounter[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[9] 
       (.C(in_clk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(hcounter[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hC8CCC8CFCCCCCCCC)) 
    hsync_i_1
       (.I0(hsync_i_2_n_0),
        .I1(hsync),
        .I2(hsync_i_3_n_0),
        .I3(hcounter[4]),
        .I4(hcounter[6]),
        .I5(hsync_i_4_n_0),
        .O(hsync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h15)) 
    hsync_i_2
       (.I0(hcounter[8]),
        .I1(hcounter[6]),
        .I2(hcounter[7]),
        .O(hsync_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    hsync_i_3
       (.I0(hcounter[5]),
        .I1(hcounter[3]),
        .O(hsync_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    hsync_i_4
       (.I0(hcounter[1]),
        .I1(hcounter[2]),
        .I2(hcounter[0]),
        .I3(hcounter[8]),
        .I4(hcounter[7]),
        .I5(\hcounter[10]_i_3_n_0 ),
        .O(hsync_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    hsync_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(hsync_i_1_n_0),
        .Q(hsync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0155FFFF)) 
    \lcd_data[10]_i_1 
       (.I0(hcounter[10]),
        .I1(hcounter[7]),
        .I2(hcounter[8]),
        .I3(hcounter[9]),
        .I4(\lcd_data[15]_i_2_n_0 ),
        .O(color[15]));
  LUT6 #(
    .INIT(64'h0008080A0A020A02)) 
    \lcd_data[14]_i_1 
       (.I0(\lcd_data[15]_i_2_n_0 ),
        .I1(hcounter[9]),
        .I2(hcounter[10]),
        .I3(hcounter[7]),
        .I4(hcounter[6]),
        .I5(hcounter[8]),
        .O(color[22]));
  LUT6 #(
    .INIT(64'h555D5D5F5F575F57)) 
    \lcd_data[15]_i_1 
       (.I0(\lcd_data[15]_i_2_n_0 ),
        .I1(hcounter[9]),
        .I2(hcounter[10]),
        .I3(hcounter[7]),
        .I4(hcounter[6]),
        .I5(hcounter[8]),
        .O(color[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \lcd_data[15]_i_2 
       (.I0(vcounter[10]),
        .I1(\lcd_data[15]_i_3_n_0 ),
        .I2(vcounter[9]),
        .O(\lcd_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000015FF)) 
    \lcd_data[15]_i_3 
       (.I0(vcounter[5]),
        .I1(vcounter[4]),
        .I2(vcounter[3]),
        .I3(vcounter[6]),
        .I4(vcounter[8]),
        .I5(vcounter[7]),
        .O(\lcd_data[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lcd_data[3]_i_1 
       (.I0(\lcd_data[15]_i_2_n_0 ),
        .I1(\lcd_data[4]_i_2_n_0 ),
        .O(color[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \lcd_data[4]_i_1 
       (.I0(\lcd_data[15]_i_2_n_0 ),
        .I1(\lcd_data[4]_i_2_n_0 ),
        .O(color[7]));
  LUT6 #(
    .INIT(64'hFFFF55D9FEEEA264)) 
    \lcd_data[4]_i_2 
       (.I0(hcounter[7]),
        .I1(hcounter[8]),
        .I2(hcounter[5]),
        .I3(hcounter[6]),
        .I4(hcounter[10]),
        .I5(hcounter[9]),
        .O(\lcd_data[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00022222)) 
    \lcd_data[9]_i_1 
       (.I0(\lcd_data[15]_i_2_n_0 ),
        .I1(hcounter[10]),
        .I2(hcounter[7]),
        .I3(hcounter[8]),
        .I4(hcounter[9]),
        .O(color[14]));
  FDRE \lcd_data_reg[10] 
       (.C(in_clk),
        .CE(1'b1),
        .D(color[15]),
        .Q(lcd_data[3]),
        .R(blanking));
  FDRE \lcd_data_reg[14] 
       (.C(in_clk),
        .CE(1'b1),
        .D(color[22]),
        .Q(lcd_data[4]),
        .R(blanking));
  FDRE \lcd_data_reg[15] 
       (.C(in_clk),
        .CE(1'b1),
        .D(color[23]),
        .Q(lcd_data[5]),
        .R(blanking));
  FDRE \lcd_data_reg[3] 
       (.C(in_clk),
        .CE(1'b1),
        .D(color[6]),
        .Q(lcd_data[0]),
        .R(blanking));
  FDRE \lcd_data_reg[4] 
       (.C(in_clk),
        .CE(1'b1),
        .D(color[7]),
        .Q(lcd_data[1]),
        .R(blanking));
  FDRE \lcd_data_reg[9] 
       (.C(in_clk),
        .CE(1'b1),
        .D(color[14]),
        .Q(lcd_data[2]),
        .R(blanking));
  FDRE lcd_de_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(lcd_de),
        .R(blanking));
  FDRE lcd_hsync_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(hsync),
        .Q(lcd_hsync),
        .R(1'b0));
  FDRE lcd_vsync_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(vsync),
        .Q(lcd_vsync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vcounter[0]_i_1 
       (.I0(vcounter[0]),
        .O(\vcounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \vcounter[10]_i_1 
       (.I0(\vcounter[10]_i_2_n_0 ),
        .I1(vcounter[9]),
        .I2(\vcounter[10]_i_3_n_0 ),
        .I3(\vcounter[10]_i_4_n_0 ),
        .I4(vcounter[8]),
        .I5(vcounter[10]),
        .O(\vcounter[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \vcounter[10]_i_2 
       (.I0(vcounter[3]),
        .I1(vcounter[10]),
        .I2(vcounter[8]),
        .I3(\vcounter[10]_i_5_n_0 ),
        .I4(\vcounter[10]_i_6_n_0 ),
        .O(\vcounter[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vcounter[10]_i_3 
       (.I0(vcounter[7]),
        .I1(vcounter[6]),
        .O(\vcounter[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \vcounter[10]_i_4 
       (.I0(vcounter[3]),
        .I1(vcounter[4]),
        .I2(vcounter[0]),
        .I3(vcounter[1]),
        .I4(vcounter[2]),
        .I5(vcounter[5]),
        .O(\vcounter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \vcounter[10]_i_5 
       (.I0(vcounter[2]),
        .I1(vcounter[6]),
        .I2(vcounter[0]),
        .I3(vcounter[7]),
        .O(\vcounter[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \vcounter[10]_i_6 
       (.I0(vcounter[5]),
        .I1(vcounter[1]),
        .I2(vcounter[4]),
        .I3(vcounter[9]),
        .O(\vcounter[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \vcounter[1]_i_1 
       (.I0(\vcounter[3]_i_2_n_0 ),
        .I1(vcounter[0]),
        .I2(vcounter[1]),
        .O(\vcounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \vcounter[2]_i_1 
       (.I0(\vcounter[3]_i_2_n_0 ),
        .I1(vcounter[1]),
        .I2(vcounter[0]),
        .I3(vcounter[2]),
        .O(\vcounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \vcounter[3]_i_1 
       (.I0(\vcounter[3]_i_2_n_0 ),
        .I1(vcounter[0]),
        .I2(vcounter[1]),
        .I3(vcounter[2]),
        .I4(vcounter[3]),
        .O(\vcounter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \vcounter[3]_i_2 
       (.I0(\vcounter[3]_i_3_n_0 ),
        .I1(\vcounter[3]_i_4_n_0 ),
        .I2(vcounter[3]),
        .I3(vcounter[2]),
        .I4(vcounter[4]),
        .I5(vcounter[5]),
        .O(\vcounter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \vcounter[3]_i_3 
       (.I0(vcounter[10]),
        .I1(vcounter[8]),
        .I2(vcounter[9]),
        .O(\vcounter[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \vcounter[3]_i_4 
       (.I0(vcounter[6]),
        .I1(vcounter[7]),
        .I2(vcounter[1]),
        .I3(vcounter[0]),
        .O(\vcounter[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vcounter[4]_i_1 
       (.I0(vcounter[4]),
        .I1(vcounter[2]),
        .I2(vcounter[1]),
        .I3(vcounter[0]),
        .I4(vcounter[3]),
        .O(\vcounter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \vcounter[5]_i_1 
       (.I0(vcounter[5]),
        .I1(vcounter[3]),
        .I2(vcounter[4]),
        .I3(vcounter[0]),
        .I4(vcounter[1]),
        .I5(vcounter[2]),
        .O(\vcounter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \vcounter[6]_i_1 
       (.I0(\vcounter[10]_i_2_n_0 ),
        .I1(\vcounter[10]_i_4_n_0 ),
        .I2(vcounter[6]),
        .O(\vcounter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \vcounter[7]_i_1 
       (.I0(\vcounter[10]_i_2_n_0 ),
        .I1(vcounter[6]),
        .I2(\vcounter[10]_i_4_n_0 ),
        .I3(vcounter[7]),
        .O(\vcounter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \vcounter[8]_i_1 
       (.I0(vcounter[8]),
        .I1(\vcounter[10]_i_4_n_0 ),
        .I2(vcounter[7]),
        .I3(vcounter[6]),
        .O(\vcounter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \vcounter[9]_i_1 
       (.I0(vcounter[9]),
        .I1(vcounter[6]),
        .I2(vcounter[7]),
        .I3(\vcounter[10]_i_4_n_0 ),
        .I4(vcounter[8]),
        .O(\vcounter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[0] 
       (.C(in_clk),
        .CE(p_0_in),
        .D(\vcounter[0]_i_1_n_0 ),
        .Q(vcounter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[10] 
       (.C(in_clk),
        .CE(p_0_in),
        .D(\vcounter[10]_i_1_n_0 ),
        .Q(vcounter[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[1] 
       (.C(in_clk),
        .CE(p_0_in),
        .D(\vcounter[1]_i_1_n_0 ),
        .Q(vcounter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[2] 
       (.C(in_clk),
        .CE(p_0_in),
        .D(\vcounter[2]_i_1_n_0 ),
        .Q(vcounter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[3] 
       (.C(in_clk),
        .CE(p_0_in),
        .D(\vcounter[3]_i_1_n_0 ),
        .Q(vcounter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[4] 
       (.C(in_clk),
        .CE(p_0_in),
        .D(\vcounter[4]_i_1_n_0 ),
        .Q(vcounter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[5] 
       (.C(in_clk),
        .CE(p_0_in),
        .D(\vcounter[5]_i_1_n_0 ),
        .Q(vcounter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[6] 
       (.C(in_clk),
        .CE(p_0_in),
        .D(\vcounter[6]_i_1_n_0 ),
        .Q(vcounter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[7] 
       (.C(in_clk),
        .CE(p_0_in),
        .D(\vcounter[7]_i_1_n_0 ),
        .Q(vcounter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[8] 
       (.C(in_clk),
        .CE(p_0_in),
        .D(\vcounter[8]_i_1_n_0 ),
        .Q(vcounter[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[9] 
       (.C(in_clk),
        .CE(p_0_in),
        .D(\vcounter[9]_i_1_n_0 ),
        .Q(vcounter[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAEAAAA08AAAAAAAA)) 
    vsync_i_1
       (.I0(vsync),
        .I1(vcounter[5]),
        .I2(vsync_i_2_n_0),
        .I3(vcounter[0]),
        .I4(vcounter[1]),
        .I5(vsync_i_3_n_0),
        .O(vsync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    vsync_i_2
       (.I0(vcounter[3]),
        .I1(vcounter[4]),
        .O(vsync_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    vsync_i_3
       (.I0(vcounter[9]),
        .I1(vcounter[10]),
        .I2(\vcounter[10]_i_3_n_0 ),
        .I3(vcounter[2]),
        .I4(vcounter[8]),
        .I5(vsync_i_4_n_0),
        .O(vsync_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    vsync_i_4
       (.I0(vcounter[4]),
        .I1(vcounter[5]),
        .I2(vcounter[7]),
        .O(vsync_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vsync_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(vsync_i_1_n_0),
        .Q(vsync),
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
