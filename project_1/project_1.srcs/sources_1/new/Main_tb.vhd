library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
library work;
    use work.all
    
entity Main_tb is
end Main_tb;

architecture Behavioral of Main_tb is
signal clk : std_logic;
signal wr  : std_logic := '1';
signal mode: unsigned(3 downto 0);
signal in1 : unsigned(4 - 1 downto 0);
signal out1: unsigned(4 - 1 downto 0);

begin
    
    mEntity : entity work.Main
    generic map (MAIN_WIDTH => 4)
    port map (
        clk => clk,
        wr => wr,
        mode => mode,
        in1 => in1,
        
        out1 => out1
    );
    
    process
    begin
    wait for 200 ns;
    
    clk <= '1';
    wr <= '1';
    mode <= "0000";
    in1 <= "0001";
    wait for 200 ns;
    
    
    clk <= '1';
    wr <= '1';
    mode <= "0000";
    in1 <= "0001";
    wait for 200 ns;
    
    wait;
    end process;

end Behavioral;
