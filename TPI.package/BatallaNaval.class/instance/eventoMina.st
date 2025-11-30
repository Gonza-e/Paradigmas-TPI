eventos
eventoMina
	| tmp1 tmp2 tmp3 tmp4 tmp5 |
	tmp3 := generadorAleatorio next < 0.5
		ifTrue: [ jugador1 ]
		ifFalse: [ jugador2 ].
	tmp1 := tmp3 tablero.
	tmp2 := nil.
	[ tmp2 isNil ]
		whileTrue: [ tmp4 := generadorAleatorio nextInt: 12.
			tmp5 := generadorAleatorio nextInt: 12.
			tmp2 := tmp1 at: tmp4 at: tmp5.
			(tmp2 esIsla or: [ tmp2 esMina ])
				ifTrue: [ tmp2 := nil ] ].
	tmp2
		esMina: true;
		color: Color red muchDarker.
	self
		inform:
			'¡PELIGRO! 
Una nueva MINA ha aparecido en el tablero de ' , tmp3 nombre
				, ' en el sector (' , tmp4 asString , ':' , tmp5 asString , ').';
		actualizarVisibilidadTableros