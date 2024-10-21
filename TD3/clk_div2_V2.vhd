----------------------------------------------------------
-- projet : thunderbird
-- auteur : P.BENABES
-- description : display the lighting of an old american car
----------------------------------------------------------

-- open the standard libraries
library ieee;
use ieee.std_logic_1164.all ;	-- définit le types std_logic std_logic_vector
use ieee.NUMERIC_STD.all;

-- the TOP level entity
entity clk_div2_v2 is 
-- Input/Outputs definition
port (  RESET   :   in std_logic;		-- 50 Mhz Clock
        CLK_IN  :   in std_logic;		-- 50 Mhz Clock
		  facteur :   in std_logic_vector(3 downto 0);
        CLK_OUT :  out std_logic		-- 1 Hz clock
		  ) ;
		  
end entity; 


architecture a1 of clk_div2_v2 is 
	signal clkcnt: unsigned(3 downto 0) := (others => '0');
	signal clkout: std_logic := '0';
begin
	process (CLK_IN, RESET) is
	begin
		if RESET = '0' then
			clkcnt <= (others => '0');
			clkout <= '0';
		elsif rising_edge(CLK_IN) then
			if clkcnt = 0 then
				clkcnt <= unsigned(facteur);
				clkout <= '1';
			elsif clkcnt = unsigned(facteur)/2+1 then
				clkout <= '0';
				clkcnt <= clkcnt - 1;
			else
				clkcnt <= clkcnt - 1;
			end if;
		end if;
	end process;
	CLK_OUT <=  CLK_IN when unsigned(facteur) = to_unsigned(0, clkcnt'length) else clkout;
end architecture; 


