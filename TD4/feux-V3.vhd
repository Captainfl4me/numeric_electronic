Library ieee ;
Use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;
use IEEE.math_real.all;

entity feux_V3 is
generic (c_red_duration    : integer := 3;
			c_orange_duration : integer := 1;
			c_green_duration  : integer := 2);
port (clk, raz : in  std_logic ;  -- horloge, reset, et bouton poussoir
      r,o,v    : out std_logic ) ;		  -- commande des lumières rouge, orange et vert
end entity;

architecture a1 of feux_V3 is

type statetype is (S_RED, S_GREEN, S_ORANGE);		-- états de la machine d'état 
signal state : statetype := S_RED;  						-- registre d'état
constant COUNTER_LENGTH : integer := integer(ceil(log2(REALMAX(REALMAX(real(c_red_duration), real(c_green_duration)), real(c_orange_duration)))));
signal counter : unsigned(COUNTER_LENGTH-1 downto 0) := to_unsigned(c_red_duration-1, COUNTER_LENGTH);

begin

  process(clk,raz)
  begin
    if (raz='0') then							-- reset asynchrone
        state <= S_RED;
		  counter <= to_unsigned(c_red_duration, COUNTER_LENGTH);
    elsif (clk'event and clk='1') then			-- au top d'horloge
		counter <= counter - 1;
		if counter = 0 then
			case state is								-- calcul du nouvel etat
			  when S_RED => state <= S_GREEN; counter <= to_unsigned(c_green_duration-1, COUNTER_LENGTH);
			  when S_GREEN => state <= S_ORANGE; counter <= to_unsigned(c_orange_duration-1, COUNTER_LENGTH);
			  when S_ORANGE => state <= S_RED; counter <= to_unsigned(c_red_duration-1, COUNTER_LENGTH);
			end case ;
		end if;
    end if ;
  end process;

  -- calcul des sorties en fonction de l'état
  r <= '1' when state=S_RED else '0' ;  
  v <= '1' when state=S_GREEN else '0' ;  
  o <= '1' when state=S_ORANGE else '0' ;  
end a1;
