Library ieee ;
Use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;
use IEEE.math_real.all;

entity feux_V5 is
generic (c_red_duration    : integer := 3;
			c_orange_duration : integer := 1;
			c_green_duration  : integer := 2;
			c_min_green_duration  : integer := 5);
port (clk, raz, pieton : in  std_logic ;  -- horloge, reset, et bouton poussoir
      r,o,v    : out std_logic ) ;		  -- commande des lumières rouge, orange et vert
end entity;

architecture a1 of feux_V5 is

type statetype is (S_RED, S_GREEN, S_ORANGE);		-- états de la machine d'état 
signal state : statetype := S_RED;  						-- registre d'état
constant COUNTER_LENGTH : integer := integer(ceil(log2(REALMAX(REALMAX(real(c_red_duration), real(c_green_duration)), real(c_orange_duration)))));
signal counter : unsigned(COUNTER_LENGTH-1 downto 0) := to_unsigned(c_red_duration-1, COUNTER_LENGTH);

signal pieton_ask : std_logic := '0';
signal pieton_ask_sync_1 : std_logic := '0';
signal state_orange_ack : std_logic := '0';

begin
  process(pieton,state_orange_ack)
  begin
	 if state_orange_ack = '1' then
		pieton_ask <= '0';
	 elsif falling_edge(pieton) then
		if state = S_GREEN then
			pieton_ask <= '1';
		end if;
	 end if;
  end process;
  
  process(clk,raz)
  begin
    if (raz='0') then							-- reset asynchrone
		  pieton_ask_sync_1 <= '0';
		  state_orange_ack <= '0';
        state <= S_RED;
		  counter <= to_unsigned(c_red_duration, COUNTER_LENGTH);
    elsif (clk'event and clk='1') then			-- au top d'horloge
		-- Latch stage
		pieton_ask_sync_1 <= pieton_ask;
		
		counter <= counter - 1;
		state_orange_ack <= '0';
		case state is								-- calcul du nouvel etat
			  when S_RED => 
					if counter = 0 then
						state <= S_GREEN;
						counter <= to_unsigned(c_green_duration-1, COUNTER_LENGTH);
					end if;
			  when S_GREEN =>
					if counter = 0 or (pieton_ask_sync_1 = '1' and counter <= c_green_duration-c_min_green_duration) then
						state <= S_ORANGE;
						counter <= to_unsigned(c_orange_duration-1, COUNTER_LENGTH);
						state_orange_ack <= '1';
					end if;
			  when S_ORANGE => 
					if counter = 0 then
						state <= S_RED;
						counter <= to_unsigned(c_red_duration-1, COUNTER_LENGTH);
					end if;
			end case ;
    end if ;
  end process;

  -- calcul des sorties en fonction de l'état
  r <= '1' when state=S_RED else '0' ;  
  v <= '1' when state=S_GREEN else '0' ;  
  o <= '1' when state=S_ORANGE else '0' ;  
end a1;
