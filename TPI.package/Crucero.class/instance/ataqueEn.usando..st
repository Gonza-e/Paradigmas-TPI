ataque
ataqueEn: arg1 usando: arg2
	| tmp1 tmp2 tmp3 limite tmp5 |
	tmp3 := arg1 jugador tablero.
	limite := 12.  "Usamos 12 como límite del tablero"
	tmp1 := arg1 fila.
	tmp2 := arg1 columna.
	tmp5 := OrderedCollection with: arg1.
	
	"Verificar celda superior (si la fila > 1)"
	tmp1 > 1
		ifTrue: [ tmp5 add: (tmp3 at: tmp1 - 1 at: tmp2) ].
		
	"Verificar celda inferior (si la fila < 12)"
	tmp1 < limite
		ifTrue: [ tmp5 add: (tmp3 at: tmp1 + 1 at: tmp2) ].
		
	arg2 manejarPintadoYReversion: tmp5