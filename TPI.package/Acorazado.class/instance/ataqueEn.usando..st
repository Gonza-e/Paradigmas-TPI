ataque
ataqueEn: arg1 usando: arg2
	| tmp1 tmp2 tmp3 limite tmp5 |
	tmp3 := arg1 jugador tablero.
	limite := 12. 
	tmp1 := arg1 fila.
	tmp2 := arg1 columna.
	tmp5 := OrderedCollection new.
	tmp5 add: arg1.
	"Verificar límites para fila (arriba y abajo)"
	tmp1 > 1
		ifTrue: [ tmp5 add: (tmp3 at: tmp1 - 1 at: tmp2) ].
	tmp1 < limite 
		ifTrue: [ tmp5 add: (tmp3 at: tmp1 + 1 at: tmp2) ].
	"Verificar límites para columna (izquierda y derecha)"
	tmp2 > 1
		ifTrue: [ tmp5 add: (tmp3 at: tmp1 at: tmp2 - 1) ].
	tmp2 < limite
		ifTrue: [ tmp5 add: (tmp3 at: tmp1 at: tmp2 + 1) ].
	arg2 manejarPintadoYReversion: tmp5