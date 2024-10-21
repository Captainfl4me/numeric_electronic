-------------------------------------------------------
-- Ce programme a été développé à CENTRALE-SUPELEC
-- Merci de conserver ce cartouche
-- Copyright  (c) 2022  CENTRALE-SUPELEC   
-- Département Systèmes électroniques
-- ---------------------------------------------------
--
-- fichier : testbench_Cpresynth_0.vhd
-- auteur  : P.BENABES   
-- Copyright (c) 2022 CENTRALE-SUPELEC
-- Revision: 4.1  Date: 22/02/2022
--
-- ---------------------------------------------------
-- ---------------------------------------------------
--
-- DESCRIPTION DU SCRIPT :
-- Configuration pour la simulation initiale avant synthèse 
-- route_io=0 lowpower=0 multialim=0
--
--------------------------------------------------------

configuration C1 of testbench is 
  for tbradix4
    for all:radix4 use entity work.radix4(a1) ;
	for a1
    	  for all:radix2 use entity work.radix2(a3) ;
	  end for ;
	end for ;
    end for ;
  end for;
end C1 ;

