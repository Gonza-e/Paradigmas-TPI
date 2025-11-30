preparacion
crearTableroEn: arg1 enPosicion: arg2
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp8 tmp9 tmp10 tmp11 tmp12 tmp13 tmp14 tmp16 |
	tmp1 := 12.
	tmp2 := Array2D rows: tmp1 columns: tmp1.
	tmp3 := arg2 x.
	tmp4 := arg2 y.
	tmp5 := tmp1.
	tmp10 := tmp5.
	tmp12 := tmp10.
	tmp14 := tmp12.
	1 to: tmp14 do: [ :tmp15 | 
		tmp6 := tmp1.
		tmp11 := tmp6.
		tmp13 := tmp11.
		tmp16 := tmp13.
		1 to: tmp16 do: [ :tmp17 | 
			tmp7 := nil.
			tmp8 := nil.
			tmp9 := nil.
			tmp8 := tmp3 + ((tmp17 - 1) * 30).
			tmp9 := tmp4 + ((tmp15 - 1) * 30).
			tmp7 := CeldaMorph new.
			tmp7
				fila: tmp15;
				columna: tmp17;
				jugador: self;
				fueGolpeada: false;
				ocupadaPorBarco: false;
				bounds: (tmp8 @ tmp9 extent: 28 @ 28);
				color: Color blue;
				borderWidth: 1;
				borderColor: Color black.
			arg1 addMorph: tmp7.
			tmp2 at: tmp15 at: tmp17 put: tmp7 ] ].
	tablero := tmp2.
	self
		generarIslasEn: tablero;
		generarMinasEn: tablero