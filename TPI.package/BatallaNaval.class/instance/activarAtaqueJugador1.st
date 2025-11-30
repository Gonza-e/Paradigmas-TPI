faseAtaque
activarAtaqueJugador1
	self esTurnoAtaque
		ifFalse: [ self inform: 'En este turno solo puedes usar radar.'.
			^ self ].
	modoAtaqueActivado := true.
	jugadorQueAtaca := jugador1.
	botonAtacarJ1 hide.
	self
		inform: '¡Jugador 1 en modo ATAQUE! Hacé clic en el tablero enemigo.'