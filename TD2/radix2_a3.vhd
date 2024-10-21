architecture a3 of radix2 is

signal som, dif: sfixed(vecteurin'left+1 downto vecteurin'right);

begin
	som <= x0 + x1;
	dif <= x0 - x1;

	process (som,dif,d2)
	begin
		if (d2='0') then
			yp <= resize(som, vecteurin'left, vecteurin'right, fixed_wrap, fixed_truncate);
			ym <= resize(dif, vecteurin'left, vecteurin'right, fixed_wrap, fixed_truncate);
			
			--yp <= resize(som, vecteurin'left, vecteurin'right, fixed_saturate, fixed_truncate);
			--ym <= resize(dif, vecteurin'left, vecteurin'right, fixed_saturate, fixed_truncate);
			
			--yp <= resize(som, vecteurin'left, vecteurin'right, fixed_saturate, fixed_round);
			--ym <= resize(dif, vecteurin'left, vecteurin'right, fixed_saturate, fixed_round);
			
			--yp <= resize(som, vecteurin'left, vecteurin'right, fixed_wrap, fixed_round);
			--ym <= resize(dif, vecteurin'left, vecteurin'right, fixed_wrap, fixed_round);
		else
			yp <= resize(shift_right(som, 1), vecteurin'left, vecteurin'right, fixed_wrap, fixed_truncate);
			ym <= resize(shift_right(dif, 1), vecteurin'left, vecteurin'right, fixed_wrap, fixed_truncate);
			
			--yp <= resize(shift_right(som, 1), vecteurin'left, vecteurin'right, fixed_saturate, fixed_truncate);
			--ym <= resize(shift_right(dif, 1), vecteurin'left, vecteurin'right, fixed_saturate, fixed_truncate);
			
			--yp <= resize(shift_right(som, 1), vecteurin'left, vecteurin'right, fixed_saturate, fixed_round);
			--ym <= resize(shift_right(dif, 1), vecteurin'left, vecteurin'right, fixed_saturate, fixed_round);
			
			--yp <= resize(shift_right(som, 1), vecteurin'left, vecteurin'right, fixed_wrap, fixed_round);
			--ym <= resize(shift_right(dif, 1), vecteurin'left, vecteurin'right, fixed_wrap, fixed_round);
		end if ;
	end process ;

end architecture a3;

