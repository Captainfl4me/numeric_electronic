Library ieee ;
Use ieee.std_logic_1164.all ;

entity feux is
port (clk, raz : in  std_logic ;  -- horloge, reset, et bouton poussoir
      r,o,v    : out std_logic ) ;		  -- commande des lumières rouge, orange et vert
end entity feux ;

architecture a1 of feux is

type statetype is (S0, S1, S2, S3, S4, S5);		-- états de la machine d'état 
signal state : statetype;  						-- registre d'état


begin

  process(clk,raz)
  begin
    if (raz='0') then							-- reset asynchrone
        state <= S0 ;
    elsif (clk'event and clk='1') then			-- au top d'horloge
      case state is								-- calcul du nouvel etat
        when S0 => state <= S1 ;
        when S1 => state <= S2 ;
        when S2 => state <= S3 ;
        when S3 => state <= S4 ;
        when S4 => state <= S5 ;
        when S5 => state <= S0 ;
      end case ;
    end if ;
  end process;

  -- calcul des sorties en fonction de l'état
  r <= '1' when state=S0 or state=S1 or state=S2 else '0' ;  
  v <= '1' when state=S3 or state=S4 else '0' ;  
  o <= '1' when state=S5 else '0' ;  
end a1;
