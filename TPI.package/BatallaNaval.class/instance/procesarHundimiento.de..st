nuevo
procesarHundimiento: arg1 de: arg2
	| tmp1 tmp2 tmp3 |
	arg2 barcosComprados remove: arg1 ifAbsent: [ ^ self ].
	arg2 == jugador1
		ifTrue: [ tmp1 := botonesJuegoJ1 ]
		ifFalse: [ tmp1 := botonesJuegoJ2 ].
	tmp2 := tmp1
		detect: [ :arg3 | arg3 arguments first == arg1 ]
		ifNone: [  ].
	tmp2
		ifNotNil: [ tmp2 delete.
			tmp1 remove: tmp2 ].
	[ (Delay forSeconds: 1) wait.
	arg2 tablero
		do: [ :arg4 | 
			| tmp4 |
			arg4 barcoAsociado == arg1
				ifTrue: [ tmp4 := arg4.
					tmp4
						ocupadaPorBarco: false;
						barcoAsociado: nil;
						fueGolpeada: false;
						color: Color blue ] ] ] fork.
	tmp3 := self.
	tmp3
		inform:
			'¡El ' , arg1 nombreDeBarco , ' de ' , arg2 nombre
				, ' ha sido eliminado y borrado del mapa!';
		chequearFinDeJuego