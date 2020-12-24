library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity DFlipFlop is
	port (
			clk : in	std_logic;
			d	: in	unsigned(0 downto 0);

			res : out	unsigned(0 downto 0)
		);
end DFlipFlop;

architecture rtl of DFlipFlop is
begin
	DFlipFlop_P : process(clk)
	begin
		if (rising_edge(clk)) then
			res <= d;
		end if;
	end process;
end rtl;