-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (lin64) Build 5266912 Sun Dec 15 09:03:31 MST 2024
-- Date        : Mon Jan 13 18:20:51 2025
-- Host        : Electryc running 64-bit Gentoo Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top bd_NOT_gate_0 -prefix
--               bd_NOT_gate_0_ design_1_util_vector_logic_0_0_sim_netlist.vhdl
-- Design      : design_1_util_vector_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_NOT_gate_0_util_vector_logic_v2_0_4_util_vector_logic is
  port (
    Res : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Op1 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end bd_NOT_gate_0_util_vector_logic_v2_0_4_util_vector_logic;

architecture STRUCTURE of bd_NOT_gate_0_util_vector_logic_v2_0_4_util_vector_logic is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
\Res[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(1),
      O => Res(1)
    );
\Res[2]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(2),
      O => Res(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_NOT_gate_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_NOT_gate_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_NOT_gate_0 : entity is "design_1_util_vector_logic_0_0,util_vector_logic_v2_0_4_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_NOT_gate_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_NOT_gate_0 : entity is "util_vector_logic_v2_0_4_util_vector_logic,Vivado 2024.2.1";
end bd_NOT_gate_0;

architecture STRUCTURE of bd_NOT_gate_0 is
begin
inst: entity work.bd_NOT_gate_0_util_vector_logic_v2_0_4_util_vector_logic
     port map (
      Op1(2 downto 0) => Op1(2 downto 0),
      Res(2 downto 0) => Res(2 downto 0)
    );
end STRUCTURE;
