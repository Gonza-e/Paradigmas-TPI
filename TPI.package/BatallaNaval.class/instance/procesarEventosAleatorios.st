eventos
procesarEventosAleatorios
	| tmp1 |
	turnoActual = 1
		ifFalse: [ ^ self ].
	tmp1 := generadorAleatorio next.
	tmp1 < 0.98
		ifTrue: [ generadorAleatorio next < 0.41
				ifTrue: [ self eventoMina ]
				ifFalse: [ self eventoTormenta ] ]