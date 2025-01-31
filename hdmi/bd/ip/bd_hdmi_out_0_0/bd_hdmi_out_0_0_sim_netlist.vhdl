-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Wed Jan 29 08:44:36 2025
-- Host        : Electryc running 64-bit Gentoo Linux
-- Command     : write_vhdl -force -mode funcsim
--               /mnt/CONTMP/home/ladon/contmp/zynq/hdmi/bd/ip/bd_hdmi_out_0_0/bd_hdmi_out_0_0_sim_netlist.vhdl
-- Design      : bd_hdmi_out_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_hdmi_out_0_0_hdmi_out is
  port (
    lcd_data : out STD_LOGIC_VECTOR ( 5 downto 0 );
    lcd_de : out STD_LOGIC;
    lcd_vsync : out STD_LOGIC;
    lcd_hsync : out STD_LOGIC;
    in_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_hdmi_out_0_0_hdmi_out : entity is "hdmi_out";
end bd_hdmi_out_0_0_hdmi_out;

architecture STRUCTURE of bd_hdmi_out_0_0_hdmi_out is
  signal blanking : STD_LOGIC;
  signal blanking_i_1_n_0 : STD_LOGIC;
  signal blanking_i_2_n_0 : STD_LOGIC;
  signal color : STD_LOGIC_VECTOR ( 23 downto 6 );
  signal hcounter : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \hcounter[10]_i_3_n_0\ : STD_LOGIC;
  signal \hcounter[10]_i_4_n_0\ : STD_LOGIC;
  signal \hcounter[10]_i_5_n_0\ : STD_LOGIC;
  signal \hcounter[10]_i_6_n_0\ : STD_LOGIC;
  signal \hcounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \hcounter[9]_i_2_n_0\ : STD_LOGIC;
  signal hsync : STD_LOGIC;
  signal hsync_i_1_n_0 : STD_LOGIC;
  signal hsync_i_2_n_0 : STD_LOGIC;
  signal hsync_i_3_n_0 : STD_LOGIC;
  signal hsync_i_4_n_0 : STD_LOGIC;
  signal \lcd_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \lcd_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \lcd_data[4]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal vcounter : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \vcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \vcounter[10]_i_1_n_0\ : STD_LOGIC;
  signal \vcounter[10]_i_2_n_0\ : STD_LOGIC;
  signal \vcounter[10]_i_3_n_0\ : STD_LOGIC;
  signal \vcounter[10]_i_4_n_0\ : STD_LOGIC;
  signal \vcounter[10]_i_5_n_0\ : STD_LOGIC;
  signal \vcounter[10]_i_6_n_0\ : STD_LOGIC;
  signal \vcounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \vcounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \vcounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \vcounter[3]_i_2_n_0\ : STD_LOGIC;
  signal \vcounter[3]_i_3_n_0\ : STD_LOGIC;
  signal \vcounter[3]_i_4_n_0\ : STD_LOGIC;
  signal \vcounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \vcounter[5]_i_1_n_0\ : STD_LOGIC;
  signal \vcounter[6]_i_1_n_0\ : STD_LOGIC;
  signal \vcounter[7]_i_1_n_0\ : STD_LOGIC;
  signal \vcounter[8]_i_1_n_0\ : STD_LOGIC;
  signal \vcounter[9]_i_1_n_0\ : STD_LOGIC;
  signal vsync : STD_LOGIC;
  signal vsync_i_1_n_0 : STD_LOGIC;
  signal vsync_i_2_n_0 : STD_LOGIC;
  signal vsync_i_3_n_0 : STD_LOGIC;
  signal vsync_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hcounter[10]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \hcounter[10]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hcounter[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \hcounter[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \hcounter[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hcounter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hcounter[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hcounter[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hcounter[9]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of hsync_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lcd_data[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \lcd_data[15]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \lcd_data[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \lcd_data[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \lcd_data[9]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vcounter[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vcounter[10]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \vcounter[10]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \vcounter[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vcounter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vcounter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vcounter[3]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vcounter[3]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \vcounter[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vcounter[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vcounter[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vcounter[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vcounter[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of vsync_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of vsync_i_4 : label is "soft_lutpair9";
begin
blanking_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554FFFF55545554"
    )
        port map (
      I0 => \hcounter[10]_i_3_n_0\,
      I1 => hcounter(6),
      I2 => hcounter(7),
      I3 => hcounter(8),
      I4 => blanking_i_2_n_0,
      I5 => vcounter(10),
      O => blanking_i_1_n_0
    );
blanking_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F0007000F"
    )
        port map (
      I0 => vcounter(5),
      I1 => vcounter(4),
      I2 => vcounter(9),
      I3 => vcounter(8),
      I4 => vcounter(7),
      I5 => vcounter(6),
      O => blanking_i_2_n_0
    );
blanking_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => blanking_i_1_n_0,
      Q => blanking,
      R => '0'
    );
\hcounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hcounter(0),
      O => plusOp(0)
    );
\hcounter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \hcounter[10]_i_3_n_0\,
      I1 => \hcounter[10]_i_4_n_0\,
      I2 => hcounter(4),
      I3 => hcounter(6),
      I4 => hcounter(5),
      I5 => \hcounter[10]_i_5_n_0\,
      O => p_0_in
    );
\hcounter[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => hcounter(10),
      I1 => hcounter(6),
      I2 => hcounter(7),
      I3 => hcounter(8),
      I4 => hcounter(9),
      I5 => \hcounter[10]_i_6_n_0\,
      O => plusOp(10)
    );
\hcounter[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => hcounter(10),
      I1 => hcounter(9),
      O => \hcounter[10]_i_3_n_0\
    );
\hcounter[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hcounter(8),
      I1 => hcounter(7),
      O => \hcounter[10]_i_4_n_0\
    );
\hcounter[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => hcounter(2),
      I1 => hcounter(1),
      I2 => hcounter(0),
      I3 => hcounter(3),
      O => \hcounter[10]_i_5_n_0\
    );
\hcounter[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => hcounter(2),
      I1 => hcounter(1),
      I2 => hcounter(0),
      I3 => hcounter(3),
      I4 => hcounter(4),
      I5 => hcounter(5),
      O => \hcounter[10]_i_6_n_0\
    );
\hcounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hcounter(1),
      I1 => hcounter(0),
      O => plusOp(1)
    );
\hcounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => hcounter(2),
      I1 => hcounter(1),
      I2 => hcounter(0),
      O => plusOp(2)
    );
\hcounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => hcounter(3),
      I1 => hcounter(0),
      I2 => hcounter(1),
      I3 => hcounter(2),
      O => plusOp(3)
    );
\hcounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => hcounter(4),
      I1 => hcounter(3),
      I2 => hcounter(0),
      I3 => hcounter(1),
      I4 => hcounter(2),
      O => \hcounter[4]_i_1_n_0\
    );
\hcounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => hcounter(5),
      I1 => hcounter(2),
      I2 => hcounter(1),
      I3 => hcounter(0),
      I4 => hcounter(3),
      I5 => hcounter(4),
      O => plusOp(5)
    );
\hcounter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => hcounter(6),
      I1 => hcounter(5),
      I2 => hcounter(4),
      I3 => \hcounter[10]_i_5_n_0\,
      O => plusOp(6)
    );
\hcounter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => hcounter(7),
      I1 => hcounter(6),
      I2 => hcounter(5),
      I3 => hcounter(4),
      I4 => \hcounter[10]_i_5_n_0\,
      O => plusOp(7)
    );
\hcounter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => hcounter(8),
      I1 => \hcounter[10]_i_5_n_0\,
      I2 => hcounter(4),
      I3 => hcounter(5),
      I4 => hcounter(6),
      I5 => hcounter(7),
      O => plusOp(8)
    );
\hcounter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => hcounter(9),
      I1 => hcounter(7),
      I2 => hcounter(6),
      I3 => hcounter(5),
      I4 => \hcounter[9]_i_2_n_0\,
      I5 => hcounter(8),
      O => plusOp(9)
    );
\hcounter[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => hcounter(4),
      I1 => hcounter(3),
      I2 => hcounter(0),
      I3 => hcounter(1),
      I4 => hcounter(2),
      O => \hcounter[9]_i_2_n_0\
    );
\hcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => plusOp(0),
      Q => hcounter(0),
      R => p_0_in
    );
\hcounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => plusOp(10),
      Q => hcounter(10),
      R => p_0_in
    );
\hcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => plusOp(1),
      Q => hcounter(1),
      R => p_0_in
    );
\hcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => plusOp(2),
      Q => hcounter(2),
      R => p_0_in
    );
\hcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => plusOp(3),
      Q => hcounter(3),
      R => p_0_in
    );
\hcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => \hcounter[4]_i_1_n_0\,
      Q => hcounter(4),
      R => p_0_in
    );
\hcounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => plusOp(5),
      Q => hcounter(5),
      R => p_0_in
    );
\hcounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => plusOp(6),
      Q => hcounter(6),
      R => p_0_in
    );
\hcounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => plusOp(7),
      Q => hcounter(7),
      R => p_0_in
    );
\hcounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => plusOp(8),
      Q => hcounter(8),
      R => p_0_in
    );
\hcounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => plusOp(9),
      Q => hcounter(9),
      R => p_0_in
    );
hsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8CCC8CFCCCCCCCC"
    )
        port map (
      I0 => hsync_i_2_n_0,
      I1 => hsync,
      I2 => hsync_i_3_n_0,
      I3 => hcounter(4),
      I4 => hcounter(6),
      I5 => hsync_i_4_n_0,
      O => hsync_i_1_n_0
    );
hsync_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => hcounter(8),
      I1 => hcounter(6),
      I2 => hcounter(7),
      O => hsync_i_2_n_0
    );
hsync_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => hcounter(5),
      I1 => hcounter(3),
      O => hsync_i_3_n_0
    );
hsync_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => hcounter(1),
      I1 => hcounter(2),
      I2 => hcounter(0),
      I3 => hcounter(8),
      I4 => hcounter(7),
      I5 => \hcounter[10]_i_3_n_0\,
      O => hsync_i_4_n_0
    );
hsync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => hsync_i_1_n_0,
      Q => hsync,
      R => '0'
    );
\lcd_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0155FFFF"
    )
        port map (
      I0 => hcounter(10),
      I1 => hcounter(7),
      I2 => hcounter(8),
      I3 => hcounter(9),
      I4 => \lcd_data[15]_i_2_n_0\,
      O => color(15)
    );
\lcd_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008080A0A020A02"
    )
        port map (
      I0 => \lcd_data[15]_i_2_n_0\,
      I1 => hcounter(9),
      I2 => hcounter(10),
      I3 => hcounter(7),
      I4 => hcounter(6),
      I5 => hcounter(8),
      O => color(22)
    );
\lcd_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555D5D5F5F575F57"
    )
        port map (
      I0 => \lcd_data[15]_i_2_n_0\,
      I1 => hcounter(9),
      I2 => hcounter(10),
      I3 => hcounter(7),
      I4 => hcounter(6),
      I5 => hcounter(8),
      O => color(23)
    );
\lcd_data[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => vcounter(10),
      I1 => \lcd_data[15]_i_3_n_0\,
      I2 => vcounter(9),
      O => \lcd_data[15]_i_2_n_0\
    );
\lcd_data[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000015FF"
    )
        port map (
      I0 => vcounter(5),
      I1 => vcounter(4),
      I2 => vcounter(3),
      I3 => vcounter(6),
      I4 => vcounter(8),
      I5 => vcounter(7),
      O => \lcd_data[15]_i_3_n_0\
    );
\lcd_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lcd_data[15]_i_2_n_0\,
      I1 => \lcd_data[4]_i_2_n_0\,
      O => color(6)
    );
\lcd_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \lcd_data[15]_i_2_n_0\,
      I1 => \lcd_data[4]_i_2_n_0\,
      O => color(7)
    );
\lcd_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF55D9FEEEA264"
    )
        port map (
      I0 => hcounter(7),
      I1 => hcounter(8),
      I2 => hcounter(5),
      I3 => hcounter(6),
      I4 => hcounter(10),
      I5 => hcounter(9),
      O => \lcd_data[4]_i_2_n_0\
    );
\lcd_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00022222"
    )
        port map (
      I0 => \lcd_data[15]_i_2_n_0\,
      I1 => hcounter(10),
      I2 => hcounter(7),
      I3 => hcounter(8),
      I4 => hcounter(9),
      O => color(14)
    );
\lcd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => in_clk,
      CE => '1',
      D => color(15),
      Q => lcd_data(3),
      R => blanking
    );
\lcd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => in_clk,
      CE => '1',
      D => color(22),
      Q => lcd_data(4),
      R => blanking
    );
\lcd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => in_clk,
      CE => '1',
      D => color(23),
      Q => lcd_data(5),
      R => blanking
    );
\lcd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => in_clk,
      CE => '1',
      D => color(6),
      Q => lcd_data(0),
      R => blanking
    );
\lcd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => in_clk,
      CE => '1',
      D => color(7),
      Q => lcd_data(1),
      R => blanking
    );
\lcd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => in_clk,
      CE => '1',
      D => color(14),
      Q => lcd_data(2),
      R => blanking
    );
lcd_de_reg: unisim.vcomponents.FDRE
     port map (
      C => in_clk,
      CE => '1',
      D => '1',
      Q => lcd_de,
      R => blanking
    );
lcd_hsync_reg: unisim.vcomponents.FDRE
     port map (
      C => in_clk,
      CE => '1',
      D => hsync,
      Q => lcd_hsync,
      R => '0'
    );
lcd_vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => in_clk,
      CE => '1',
      D => vsync,
      Q => lcd_vsync,
      R => '0'
    );
\vcounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vcounter(0),
      O => \vcounter[0]_i_1_n_0\
    );
\vcounter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \vcounter[10]_i_2_n_0\,
      I1 => vcounter(9),
      I2 => \vcounter[10]_i_3_n_0\,
      I3 => \vcounter[10]_i_4_n_0\,
      I4 => vcounter(8),
      I5 => vcounter(10),
      O => \vcounter[10]_i_1_n_0\
    );
\vcounter[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => vcounter(3),
      I1 => vcounter(10),
      I2 => vcounter(8),
      I3 => \vcounter[10]_i_5_n_0\,
      I4 => \vcounter[10]_i_6_n_0\,
      O => \vcounter[10]_i_2_n_0\
    );
\vcounter[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vcounter(7),
      I1 => vcounter(6),
      O => \vcounter[10]_i_3_n_0\
    );
\vcounter[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => vcounter(3),
      I1 => vcounter(4),
      I2 => vcounter(0),
      I3 => vcounter(1),
      I4 => vcounter(2),
      I5 => vcounter(5),
      O => \vcounter[10]_i_4_n_0\
    );
\vcounter[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => vcounter(2),
      I1 => vcounter(6),
      I2 => vcounter(0),
      I3 => vcounter(7),
      O => \vcounter[10]_i_5_n_0\
    );
\vcounter[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => vcounter(5),
      I1 => vcounter(1),
      I2 => vcounter(4),
      I3 => vcounter(9),
      O => \vcounter[10]_i_6_n_0\
    );
\vcounter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \vcounter[3]_i_2_n_0\,
      I1 => vcounter(0),
      I2 => vcounter(1),
      O => \vcounter[1]_i_1_n_0\
    );
\vcounter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \vcounter[3]_i_2_n_0\,
      I1 => vcounter(1),
      I2 => vcounter(0),
      I3 => vcounter(2),
      O => \vcounter[2]_i_1_n_0\
    );
\vcounter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \vcounter[3]_i_2_n_0\,
      I1 => vcounter(0),
      I2 => vcounter(1),
      I3 => vcounter(2),
      I4 => vcounter(3),
      O => \vcounter[3]_i_1_n_0\
    );
\vcounter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \vcounter[3]_i_3_n_0\,
      I1 => \vcounter[3]_i_4_n_0\,
      I2 => vcounter(3),
      I3 => vcounter(2),
      I4 => vcounter(4),
      I5 => vcounter(5),
      O => \vcounter[3]_i_2_n_0\
    );
\vcounter[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => vcounter(10),
      I1 => vcounter(8),
      I2 => vcounter(9),
      O => \vcounter[3]_i_3_n_0\
    );
\vcounter[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => vcounter(6),
      I1 => vcounter(7),
      I2 => vcounter(1),
      I3 => vcounter(0),
      O => \vcounter[3]_i_4_n_0\
    );
\vcounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => vcounter(4),
      I1 => vcounter(2),
      I2 => vcounter(1),
      I3 => vcounter(0),
      I4 => vcounter(3),
      O => \vcounter[4]_i_1_n_0\
    );
\vcounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => vcounter(5),
      I1 => vcounter(3),
      I2 => vcounter(4),
      I3 => vcounter(0),
      I4 => vcounter(1),
      I5 => vcounter(2),
      O => \vcounter[5]_i_1_n_0\
    );
\vcounter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \vcounter[10]_i_2_n_0\,
      I1 => \vcounter[10]_i_4_n_0\,
      I2 => vcounter(6),
      O => \vcounter[6]_i_1_n_0\
    );
\vcounter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \vcounter[10]_i_2_n_0\,
      I1 => vcounter(6),
      I2 => \vcounter[10]_i_4_n_0\,
      I3 => vcounter(7),
      O => \vcounter[7]_i_1_n_0\
    );
\vcounter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => vcounter(8),
      I1 => \vcounter[10]_i_4_n_0\,
      I2 => vcounter(7),
      I3 => vcounter(6),
      O => \vcounter[8]_i_1_n_0\
    );
\vcounter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => vcounter(9),
      I1 => vcounter(6),
      I2 => vcounter(7),
      I3 => \vcounter[10]_i_4_n_0\,
      I4 => vcounter(8),
      O => \vcounter[9]_i_1_n_0\
    );
\vcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_in,
      D => \vcounter[0]_i_1_n_0\,
      Q => vcounter(0),
      R => '0'
    );
\vcounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_in,
      D => \vcounter[10]_i_1_n_0\,
      Q => vcounter(10),
      R => '0'
    );
\vcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_in,
      D => \vcounter[1]_i_1_n_0\,
      Q => vcounter(1),
      R => '0'
    );
\vcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_in,
      D => \vcounter[2]_i_1_n_0\,
      Q => vcounter(2),
      R => '0'
    );
\vcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_in,
      D => \vcounter[3]_i_1_n_0\,
      Q => vcounter(3),
      R => '0'
    );
\vcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_in,
      D => \vcounter[4]_i_1_n_0\,
      Q => vcounter(4),
      R => '0'
    );
\vcounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_in,
      D => \vcounter[5]_i_1_n_0\,
      Q => vcounter(5),
      R => '0'
    );
\vcounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_in,
      D => \vcounter[6]_i_1_n_0\,
      Q => vcounter(6),
      R => '0'
    );
\vcounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_in,
      D => \vcounter[7]_i_1_n_0\,
      Q => vcounter(7),
      R => '0'
    );
\vcounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_in,
      D => \vcounter[8]_i_1_n_0\,
      Q => vcounter(8),
      R => '0'
    );
\vcounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => p_0_in,
      D => \vcounter[9]_i_1_n_0\,
      Q => vcounter(9),
      R => '0'
    );
vsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAA08AAAAAAAA"
    )
        port map (
      I0 => vsync,
      I1 => vcounter(5),
      I2 => vsync_i_2_n_0,
      I3 => vcounter(0),
      I4 => vcounter(1),
      I5 => vsync_i_3_n_0,
      O => vsync_i_1_n_0
    );
vsync_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vcounter(3),
      I1 => vcounter(4),
      O => vsync_i_2_n_0
    );
vsync_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => vcounter(9),
      I1 => vcounter(10),
      I2 => \vcounter[10]_i_3_n_0\,
      I3 => vcounter(2),
      I4 => vcounter(8),
      I5 => vsync_i_4_n_0,
      O => vsync_i_3_n_0
    );
vsync_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => vcounter(4),
      I1 => vcounter(5),
      I2 => vcounter(7),
      O => vsync_i_4_n_0
    );
vsync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => in_clk,
      CE => '1',
      D => vsync_i_1_n_0,
      Q => vsync,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_hdmi_out_0_0 is
  port (
    lcd_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmi_intn : inout STD_LOGIC;
    lcd_pclk : out STD_LOGIC;
    lcd_de : out STD_LOGIC;
    lcd_vsync : out STD_LOGIC;
    lcd_hsync : out STD_LOGIC;
    in_clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_hdmi_out_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_hdmi_out_0_0 : entity is "bd_hdmi_out_0_0,hdmi_out,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_hdmi_out_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_hdmi_out_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_hdmi_out_0_0 : entity is "hdmi_out,Vivado 2024.2.1";
end bd_hdmi_out_0_0;

architecture STRUCTURE of bd_hdmi_out_0_0 is
  signal \^in_clk\ : STD_LOGIC;
  signal \^lcd_data\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of in_clk : signal is "xilinx.com:signal:clock:1.0 in_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of in_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of in_clk : signal is "XIL_INTERFACENAME in_clk, FREQ_HZ 115200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /Pixel_clock_clk_out1, INSERT_VIP 0";
begin
  \^in_clk\ <= in_clk;
  lcd_data(15) <= \^lcd_data\(15);
  lcd_data(14) <= \^lcd_data\(13);
  lcd_data(13) <= \^lcd_data\(13);
  lcd_data(12) <= \^lcd_data\(13);
  lcd_data(11) <= \^lcd_data\(13);
  lcd_data(10) <= \^lcd_data\(10);
  lcd_data(9) <= \^lcd_data\(8);
  lcd_data(8) <= \^lcd_data\(8);
  lcd_data(7) <= \^lcd_data\(8);
  lcd_data(6) <= \^lcd_data\(8);
  lcd_data(5) <= \^lcd_data\(8);
  lcd_data(4) <= \^lcd_data\(4);
  lcd_data(3) <= \^lcd_data\(2);
  lcd_data(2) <= \^lcd_data\(2);
  lcd_data(1) <= \^lcd_data\(2);
  lcd_data(0) <= \^lcd_data\(2);
  lcd_pclk <= \^in_clk\;
inst: entity work.bd_hdmi_out_0_0_hdmi_out
     port map (
      in_clk => \^in_clk\,
      lcd_data(5) => \^lcd_data\(15),
      lcd_data(4) => \^lcd_data\(13),
      lcd_data(3) => \^lcd_data\(10),
      lcd_data(2) => \^lcd_data\(8),
      lcd_data(1) => \^lcd_data\(4),
      lcd_data(0) => \^lcd_data\(2),
      lcd_de => lcd_de,
      lcd_hsync => lcd_hsync,
      lcd_vsync => lcd_vsync
    );
end STRUCTURE;
