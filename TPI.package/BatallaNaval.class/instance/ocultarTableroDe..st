faseCompra
ocultarTableroDe: arg1
	arg1 tablero
		do: [ :arg2 | 
			| tmp1 |
			tmp1 := arg2.
			tmp1
				fueGolpeada: false;
				color: Color blue ]