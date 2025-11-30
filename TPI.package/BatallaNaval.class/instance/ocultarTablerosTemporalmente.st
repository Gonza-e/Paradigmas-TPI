nuevo
ocultarTablerosTemporalmente
	| tmp1 tmp2 |
	tmp1 := jugador1 tablero.
	tmp2 := jugador2 tablero.
	1 to: 12 do: [ :tmp3 | 
		1 to: 12 do: [ :tmp4 | 
			(tmp1 at: tmp3 at: tmp4) color: Color blue.
			(tmp2 at: tmp3 at: tmp4) color: Color blue ] ]