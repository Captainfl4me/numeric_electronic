------------------------------------------------------
-- Ce programme a été développé à CENTRALE-SUPELEC
-- Merci de conserver ce cartouche
-- Copyright  (c) 2022  CENTRALE-SUPELEC   
-- Département Systèmes électroniques
-- --------------------------------------------------
--
-- fichier : testbench_a1_00.vhd
-- auteur  : P.BENABES   
-- Copyright (c) 2022 CENTRALE-SUPELEC
-- Revision: 4.1  Date: 22/02/2022
--
-- --------------------------------------------------
-- --------------------------------------------------
--
-- DESCRIPTION DU SCRIPT :
-- description du testbench incluant le testeur et le circuit
-- en mode route_io=0 multialim=0
-- pour la technologie XFAB 180 nm
--
--------------------------------------------------------

architecture tbradix2 of testbench is

signal x0,x1,yp0,ym0,yp1,ym1 : vecteurin := (others => '0') ;

begin

  -- instantiation du systeme a tester  
  --UUT1 : entity work.radix2(a1)  port map('0',x0,x1,yp0,ym0);   
  --UUT2 : entity work.radix2(a2)  port map('0',x0,x1,yp1,ym1);   
  UUT3 : entity work.radix2(a3)  port map('0',x0,x1,yp1,ym1);   

--  x0 <= to_signed(400,x0'length) ;
  x0 <= to_sfixed(0.4,x0) ;

  process
	begin
		x1 <= resize(x1+0.05,x1,fixed_wrap) ;
		--x1 <= x1 + 100 ;
		wait for 20 ns ;
  end process ;


end tbradix2;

