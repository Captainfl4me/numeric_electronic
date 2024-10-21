-- Quartus synthèse: 50 éléments logiques

architecture a2 of radix2 is

signal som, dif: signed(vecteurin'left+1 downto vecteurin'right);

begin
	som <= resize(x0, som'length) + resize(x1, som'length);
	dif <= resize(x0, dif'length) - resize(x1, dif'length);

	process (som,dif,d2)
	begin
		if (d2='0') then
			yp <= som(vecteurin'left downto vecteurin'right);
			ym <= dif(vecteurin'left downto vecteurin'right);
		else
			yp <= som(vecteurin'left+1 downto vecteurin'right+1);
			ym <= dif(vecteurin'left+1 downto vecteurin'right+1);	
		end if ;
	end process ;

end architecture a2 ;

