Library ieee ;
Use ieee.std_logic_1164.all ;

entity feux_V2 is
port (clk, raz : in  std_logic ;  -- horloge, reset, et bouton poussoir
      r,o,v    : out std_logic ) ;		  -- commande des lumières rouge, orange et vert
end entity;

architecture a1 of feux_V2 is

type statetype is (S_RED, S_GREEN, S_ORANGE);		-- états de la machine d'état 
signal state : statetype;  						-- registre d'état

begin

  process(clk,raz)
  begin
    if (raz='0') then							-- reset asynchrone
        state <= S_RED;
    elsif (clk'event and clk='1') then			-- au top d'horloge
      case state is								-- calcul du nouvel etat
        when S_RED => state <= S_GREEN;
        when S_GREEN => state <= S_ORANGE;
        when S_ORANGE => state <= S_RED;
      end case ;
    end if ;
  end process;

  -- calcul des sorties en fonction de l'état
  r <= '1' when state=S_RED else '0' ;  
  v <= '1' when state=S_GREEN else '0' ;  
  o <= '1' when state=S_ORANGE else '0' ;  
end a1;
