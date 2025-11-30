hacer
moverTableroA: arg1 enPosicion: arg2
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp8 tmp9 tmp10 tmp12 |
	tmp1 := 12.
	tmp2 := 12.
	tmp3 := arg2 x.
	tmp4 := arg2 y.
	tmp5 := tmp1.
	tmp10 := tmp5.
	1 to: tmp10 do: [ :tmp11 | 
		tmp6 := tmp2.
		tmp12 := tmp6.
		1 to: tmp12 do: [ :tmp13 | 
			tmp7 := tablero at: tmp11 at: tmp13.
			tmp8 := tmp3 + ((tmp13 - 1) * 30).
			tmp9 := tmp4 + ((tmp11 - 1) * 30).
			tmp7
				bounds: (tmp8 @ tmp9 extent: 28 @ 28);
				jugador: self.
			arg1 addMorph: tmp7 ] ]