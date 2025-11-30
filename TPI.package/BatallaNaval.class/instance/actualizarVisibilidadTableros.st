turno
actualizarVisibilidadTableros
	| tmp1 tmp2 tmp3 tmp4 tmp5 |
	tmp1 := jugadorActualEnTurno.
	tmp2 := jugadorActualEnTurno = jugador1
		ifTrue: [ jugador2 ]
		ifFalse: [ jugador1 ].
	tmp3 := tmp1 tablero.
	tmp4 := tmp2 tablero.
	1 to: 12 do: [ :tmp6 | 
		1 to: 12 do: [ :tmp7 | 
			tmp5 := nil.
			tmp5 := tmp3 at: tmp6 at: tmp7.
			tmp5 fueGolpeada
				ifTrue: [ tmp5 color: Color darkGray ]
				ifFalse: [ tmp5 ocupadaPorBarco
						ifTrue: [ tmp5 color: Color gray ]
						ifFalse: [ tmp5 esIsla
								ifTrue: [ tmp5 color: Color yellow ]
								ifFalse: [ tmp5 esMina
										ifTrue: [ tmp5 color: Color red ]
										ifFalse: [ tmp5 color: Color blue ] ] ] ] ] ].
	1 to: 12 do: [ :tmp6 | 
		1 to: 12 do: [ :tmp7 | 
			tmp5 := nil.
			tmp5 := tmp4 at: tmp6 at: tmp7.
			tmp5 fueGolpeada
				ifTrue: [ tmp5 ocupadaPorBarco
						ifTrue: [ tmp5 color: Color red ]
						ifFalse: [ tmp5 color: Color darkGray ] ]
				ifFalse: [ tmp5 color: Color blue ] ] ]