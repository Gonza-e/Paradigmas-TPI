accessing
activarRadarJugador2
	(turnoActual = 1 or: [ turnoActual = 3 ])
		ifFalse: [ ^ self inform: '¡El RADAR solo se usa en fase de reconocimiento!' ].
	jugadorActualEnTurno = jugador2
		ifFalse: [ ^ self inform: 'No es tu turno.' ].
	modoRadarActivado := true.
	jugadorQueAtaca := jugador2.
	self inform: 'RADAR activado – Hacé clic en el tablero enemigo.'