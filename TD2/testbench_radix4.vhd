-- Valeur de sortie pour x0 = -1; x1 = 0.5; x2 = 0.25i; x3 = 0.15;
-- 	Calcul manuel: y0 = -0.35 + 0.25i; y1 = -1 - 0.6i; y2 = -1.65 + 0.25i; y3 = -1 + 0.1i
-- 	Calcul manuel (avec wrap): y0 = -0.35 + 0.25i; y1 = -1 - 0.6i; y2 = 0.35 + 0.25i; y3 = -1 + 0.1i => Vérification avec simulation OK

-- Valeur de sortie pour x0 = 1; x1 = 0.5; x2 = 0.25i; x3 = 0.15;
-- 	Calcul manuel: y0 = 1.65 + 0.25i; y1 = 1 - 0.6i; y2 = 0.35 + 0.25i; y3 = 1 + 0.1i
-- 	Calcul manuel (avec wrap): y0 = -0.35 + 0.25i; y1 = 1 - 0.6i; y2 = 0.35 + 0.25i; y3 = 1 + 0.1i => Vérification avec simulation OK mais quelques imprécisions

architecture tbradix4 of testbench is
COMPONENT radix4 IS
    PORT(
      x0r,x0i,x1r,x1i,x2r,x2i,x3r,x3i     : IN vecteurin ;	-- entres
      y0r,y0i,y1r,y1i,y2r,y2i,y3r,y3i	  : OUT vecteurin ;	-- sortie du radix
      d20,d21 									   : IN std_logic
    );
END COMPONENT;

signal x0r : vecteurin := to_sfixed(-1, vecteurin'left,  vecteurin'right);
signal x0i,x1r,x1i,x2r,x2i,x3r,x3i,y0r,y0i,y1r,y1i,y2r,y2i,y3r,y3i : vecteurin := to_sfixed(0, vecteurin'left,  vecteurin'right);
signal d20,d21 : std_logic := '1';
begin
  UUT1 : radix4
	port map(
		x0r,x0i,x1r,x1i,x2r,x2i,x3r,x3i,y0r,y0i,y1r,y1i,y2r,y2i,y3r,y3i,d20,d21);   

  x1r <= to_sfixed(0.5,x1r) ;
  x2i <= to_sfixed(0.25,x2i) ;
  x3r <= to_sfixed(0.15,x3r) ;

  process
	begin
		x0r <= resize(x0r+0.01,x0r,fixed_wrap) ;
		wait for 20 ns ;
  end process ;

end tbradix4;

