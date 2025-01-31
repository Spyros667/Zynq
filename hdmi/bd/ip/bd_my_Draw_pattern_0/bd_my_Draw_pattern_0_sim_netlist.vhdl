-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Wed Jan 29 08:44:36 2025
-- Host        : Electryc running 64-bit Gentoo Linux
-- Command     : write_vhdl -force -mode funcsim
--               /mnt/CONTMP/home/ladon/contmp/zynq/hdmi/bd/ip/bd_my_Draw_pattern_0/bd_my_Draw_pattern_0_sim_netlist.vhdl
-- Design      : bd_my_Draw_pattern_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_my_Draw_pattern_0_hdmi_test is
  port (
    VSYNC : out STD_LOGIC;
    RESETN : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_my_Draw_pattern_0_hdmi_test : entity is "hdmi_test";
end bd_my_Draw_pattern_0_hdmi_test;

architecture STRUCTURE of bd_my_Draw_pattern_0_hdmi_test is
begin
HSYNC_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => RESETN,
      Q => VSYNC,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_my_Draw_pattern_0 is
  port (
    CLK : in STD_LOGIC;
    RESETN : in STD_LOGIC;
    RED : out STD_LOGIC_VECTOR ( 4 downto 0 );
    GREEN : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BLUE : out STD_LOGIC_VECTOR ( 4 downto 0 );
    HSYNC : out STD_LOGIC;
    VSYNC : out STD_LOGIC;
    PCLK : out STD_LOGIC;
    DE : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_my_Draw_pattern_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_my_Draw_pattern_0 : entity is "bd_my_Draw_pattern_0,hdmi_test,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_my_Draw_pattern_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_my_Draw_pattern_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_my_Draw_pattern_0 : entity is "hdmi_test,Vivado 2024.2.1";
end bd_my_Draw_pattern_0;

architecture STRUCTURE of bd_my_Draw_pattern_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^clk\ : STD_LOGIC;
  signal \^vsync\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of CLK : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RESETN : signal is "xilinx.com:signal:reset:1.0 RESETN RST";
  attribute X_INTERFACE_MODE of RESETN : signal is "slave";
  attribute X_INTERFACE_PARAMETER of RESETN : signal is "XIL_INTERFACENAME RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  BLUE(4) <= \<const0>\;
  BLUE(3) <= \<const0>\;
  BLUE(2) <= \<const0>\;
  BLUE(1) <= \<const0>\;
  BLUE(0) <= \<const0>\;
  DE <= \<const0>\;
  GREEN(5) <= \<const0>\;
  GREEN(4) <= \<const0>\;
  GREEN(3) <= \<const0>\;
  GREEN(2) <= \<const0>\;
  GREEN(1) <= \<const0>\;
  GREEN(0) <= \<const0>\;
  HSYNC <= \^vsync\;
  PCLK <= \^clk\;
  RED(4) <= \<const1>\;
  RED(3) <= \<const1>\;
  RED(2) <= \<const1>\;
  RED(1) <= \<const1>\;
  RED(0) <= \<const1>\;
  VSYNC <= \^vsync\;
  \^clk\ <= CLK;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.bd_my_Draw_pattern_0_hdmi_test
     port map (
      CLK => \^clk\,
      RESETN => RESETN,
      VSYNC => \^vsync\
    );
end STRUCTURE;
