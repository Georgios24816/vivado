----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.12.2020 19:47:35
-- Design Name: 
-- Module Name: FullAdder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdder_N is
    generic (WIDTH : integer := 4);
    port ( a    : in STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
           b    : in STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
           --cin  : in STD_LOGIC; --_VECTOR(WIDTH - 1 downto 0);
           
           res  : out STD_LOGIC_VECTOR(WIDTH - 1 downto 0)
         );
end FullAdder_N;

architecture Behavioral of FullAdder_N is
signal coutSig  : STD_LOGIC;

begin  
    
    PROCESS (a, b, coutSig)
    BEGIN
        res(0)      <= (a(0) xor b(0)) xor '0';--cin;
        coutSig     <= (a(0) and b(0)) or (a(0) and '0') or (b(0) and '0');
         
        for i in 1 to WIDTH - 1 loop
            res(i)      <= (a(i) xor b(i)) xor coutSig after 1 ps;
            coutSig     <= (a(i) and b(i)) or (a(i) and coutSig) or (b(i) and coutSig) after 1 ps;
        end loop;        
    END PROCESS;
    
end Behavioral;

library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;

entity test is
--    port (  
--            aIn      : in STD_LOGIC_VECTOR(3 downto 0);
--            bIn      : in STD_LOGIC_VECTOR(3 downto 0);
--            cinIn    : in STD_LOGIC;
    
--            resOut   : out STD_LOGIC_VECTOR(3 downto 0)
--         );
end test;

architecture Behavioral of test is
signal           aIn      : STD_LOGIC_VECTOR(3 downto 0) := "0001";
signal           bIn      : STD_LOGIC_VECTOR(3 downto 0) := "0010";
signal           cinIn    : STD_LOGIC                    := '0';
signal           resOut   : STD_LOGIC_VECTOR(3 downto 0);

begin  
        t : entity work.FullAdder_N
        generic map (WIDTH => 4)
        port map (
        a => aIn,
        b => bIn,
      
        res => resOut
        );
end Behavioral;

