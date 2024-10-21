library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dig2dec is 
     port (
		val  : in std_logic_vector (15 downto 0);
		seg4 : out std_logic_vector(3 downto 0);
		seg3 : out std_logic_vector(3 downto 0);
		seg2 : out std_logic_vector(3 downto 0);
		seg1 : out std_logic_vector(3 downto 0);
		seg0 : out std_logic_vector(3 downto 0)
    );
end entity; 


architecture rtl of dig2dec is 
    begin 

		p_decim : process(val)
		  variable val4 : unsigned(3 downto 0) ;	-- val4=E(val/10000) compris entre 0 et 5 (3 bits mini)
		  variable val3 : unsigned(6 downto 0) ;	-- val3=E(val/1000) compris entre 0 et 50 (6 bits mini)
		  variable val2 : unsigned(9 downto 0) ;	-- val2=E(val/100) compris entre 0 et 500 (9 bits mini)
		  variable val1 : unsigned(12 downto 0) ;	-- val1=E(val/10) compris entre 0 et 5000 (13 bits mini)
		  begin
		  
		  	val1 := resize(unsigned(val)/10,val1'length) ;  	-- on calcule les divisions successives par puissances de 10
			val2 := resize(val1/10,val2'length) ;
			val3 := resize(val2/10,val3'length) ;
			val4 := resize(val3/10,val4'length) ;	-- on calcule les divisions successives par puissances de 10

			seg0 <= std_logic_vector(resize(unsigned(val) -val1*10,seg0'length)) ;
			seg1 <= std_logic_vector(resize(val1-val2*10,seg1'length)) ;
			seg2 <= std_logic_vector(resize(val2-val3*10,seg2'length)) ;	
			seg3 <= std_logic_vector(resize(val3-val4*10,seg3'length)) ;
			seg4 <= std_logic_vector(val4) ;
			  
		end process ; 

end architecture; 


