celdas
manejarPintadoYReversion: arg1
	| tmp2 tmp3 |
	arg1
		do: [ :arg2 | 
			| tmp4 |
			arg2 ocupadaPorBarco
				ifTrue: [ tmp3 := arg2 barcoAsociado.
					tmp3 impactos: tmp3 impactos + 1.
					tmp3 impactos >= tmp3 tamaño
						ifTrue: [ tmp4 := self.
							tmp4
								inform: '¡Hundiste el ' , tmp3 nombreDeBarco , '!';
								procesarHundimiento: tmp3 de: arg2 jugador ]
						ifFalse: [ self inform: '¡Impacto!' ].
					tmp2 := Color red ]
				ifFalse: [ arg2 esIsla
						ifTrue: [ tmp2 := Color yellow.
							self inform: '¡Agua sobre isla!' ]
						ifFalse: [ arg2 esMina
								ifTrue: [ tmp2 := Color red.
									self inform: '¡Golpeaste una MINA!' ]
								ifFalse: [ tmp2 := Color yellow.
									self inform: '¡Agua!' ] ] ].
			arg2 color: tmp2 ].
	[ (Delay forSeconds: 1) wait.
	arg1
		do: [ :arg3 | 
			| tmp5 |
			arg3 ocupadaPorBarco
				ifTrue: [ tmp5 := arg3.
					tmp5
						fueGolpeada: true;
						color: Color darkGray ]
				ifFalse: [ arg3 fueGolpeada
						ifTrue: [ arg3 color: Color darkGray ]
						ifFalse: [ arg3 esIsla
								ifTrue: [ arg3 color: Color yellow ]
								ifFalse: [ arg3 esMina
										ifTrue: [ arg3 color: Color red ]
										ifFalse: [ arg3 color: Color blue ] ] ] ] ] ] fork