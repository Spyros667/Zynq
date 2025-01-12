library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity hdmi_test is
	Port (
		CLK		: in  std_logic;
		RESETN	: in  std_logic;

		RED		: out std_logic_vector(4 downto 0);
		GREEN	: out std_logic_vector(5 downto 0);
		BLUE	: out std_logic_vector(4 downto 0);
		HSYNC	: out std_logic;
		VSYNC	: out std_logic;
		PCLK	: out std_logic;
		DE		: out std_logic);
end hdmi_test;

architecture arch of hdmi_test is
	signal column	: natural range 0 to 640;
	signal row		: natural range 0 to 480;
begin
	RED		<= (others => '1');
	GREEN	<= (others => '0');
	BLUE	<= (others => '0');

	PCLK	<= CLK;

	DE		<= '0' when column = 0 or row = 0 else '1';
	
	process (CLK) is
	begin
		if rising_edge(CLK) then
			if RESETN = '0' then
				column	<= 0;
				row		<= 0;
				HSYNC	<= '0';
				VSYNC	<= '0';
			else
				HSYNC	<= '1';
				VSYNC	<= '1';

				if column = 640 then
					column	<= 0;
					HSYNC	<= '0';

					if row = 480 then
						row		<= 0;
						VSYNC	<= '0';
					end if;
				end if;
			end if;
		end if;
	end process;
end arch;
