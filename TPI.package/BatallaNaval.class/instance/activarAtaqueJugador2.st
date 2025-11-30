faseAtaque
activarAtaqueJugador2
	self esTurnoAtaque
		ifFalse: [ self inform: 'En este turno solo puedes usar radar.'.
			^ self ].
	modoAtaqueActivado := true.
	jugadorQueAtaca := jugador2.
	botonAtacarJ2 hide.
	self
		inform: '¡Jugador 2 en modo ATAQUE! Hacé clic en el tablero enemigo.'