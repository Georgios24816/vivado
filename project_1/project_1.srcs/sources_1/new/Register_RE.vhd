library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

library work;
	use work.all;

entity Register_RE is --rising edge
	generic (WIDTH : integer := 4);
	port (
			clk : in	std_logic;
			wr  : in    std_logic;
			a	: in	unsigned(WIDTH - 1 downto 0);

			res : out	unsigned(WIDTH - 1 downto 0)
		);

end Register_RE;

architecture rtl of Register_RE is 
signal w : std_logic;
signal r : unsigned(WIDTH - 1 downto 0);

begin    
    w <= '1' when (clk = '1' and wr = '1') else '0';
    
    DFF_GEN_LOOP : for i in 0 to WIDTH - 1 generate
        DFF : entity work.DFlipFlop
        port map(w, a(i downto i), r(i downto i));
    end generate;
	
	res <= r;

end rtl;