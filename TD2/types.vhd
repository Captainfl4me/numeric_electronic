-- author: benabes
-- Library : work
-- Package : TYPES

library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.NUMERIC_STD.ALL;
use ieee.fixed_float_types.all;
use ieee.fixed_pkg.all;


PACKAGE TYPES IS

--subtype vecteurin is signed(11 downto 0) ;          -- valeur signee codee sur 12 bits
subtype vecteurin is sfixed(0 downto -11) ;          -- valeur signee codee sur 12 bits
  
END TYPES;
