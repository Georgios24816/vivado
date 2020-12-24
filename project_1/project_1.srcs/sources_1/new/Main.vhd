library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
library work;
    use work.all;

entity Main is
    generic (MAIN_WIDTH : integer := 4);
    port (
        clk : in std_logic;
        wr  : in std_logic;
        mode: in unsigned(3 downto 0);
        
        in1 : in unsigned(MAIN_WIDTH - 1 downto 0);
        
        out1: out unsigned(MAIN_WIDTH - 1 downto 0)
    );
end Main;

architecture Behavioral of Main is
signal AluAInRegRes : unsigned(MAIN_WIDTH - 1 downto 0);
signal AluTOSInRegRes : unsigned(MAIN_WIDTH - 1 downto 0);

signal AluResOut : unsigned(MAIN_WIDTH - 1 downto 0);
signal AluResOutRegRes : unsigned(MAIN_WIDTH - 1 downto 0);
signal AluFlagsOutRegRes : unsigned(1 downto 0);

signal AluFlagsResRegIn : unsigned(1 downto 0);
begin

    AluAInReg : entity work.Register_RE
    generic map (WIDTH => MAIN_WIDTH)
    port map (
        clk => clk,
        wr => wr,
        a => in1,
   
        res => AluAInRegRes
    );
    
    AluTOSInReg : entity work.Register_RE
    generic map (WIDTH => MAIN_WIDTH)
    port map (
        clk => clk,
        wr => wr,
        a => AluResOutRegRes,
   
        res => AluTOSInRegRes
    );
    
    AluResOutReg : entity work.Register_RE
    generic map (WIDTH => MAIN_WIDTH)
    port map (
        clk => clk,
        wr => wr,
        a => AluResOut,
   
        res => AluResOutRegRes
    );
    
    AluFlagsOutReg : entity work.Register_RE
    generic map (WIDTH => 2)
    port map (
        clk => clk,
        wr => wr,
        a => AluFlagsResRegIn,
   
        res => AluFlagsOutRegRes
    );
    
    Alu : entity work.FullAdder
    generic map (WIDTH => MAIN_WIDTH)
    port map (
        mode => mode,
        a => in1,
        b => AluTOSInRegRes,
    
        res => AluResOut,
        ov => AluFlagsResRegIn(1),
        zero => AluFlagsResRegIn(0)
    );
    
    out1 <= AluResOutRegRes;

end Behavioral;
