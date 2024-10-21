----------------------------------------------------------
-- projet : thunderbird
-- auteur : P.BENABES
-- description : display the lighting of an old american car
----------------------------------------------------------

-- open the standard libraries
library ieee;
use ieee.std_logic_1164.all ;	-- définit le types std_logic std_logic_vector

-- the TOP level entity
entity clk_div is 

-- defines the generic parameters (project constants)
generic (facteur : integer := 25000000);  -- facteur de division d'horloge. Ici on obtiendra 1 hz à partir de 50 Mhz

-- Input/Outputs definition
port (  RESET   :   in std_logic;		-- 50 Mhz Clock
        CLK_IN  :   in std_logic;		-- 50 Mhz Clock
        CLK_OUT :  out std_logic		-- 1 Hz clock
		  ) ;
		  
end entity; 


architecture a1 of clk_div is 

begin
	
end architecture; 


