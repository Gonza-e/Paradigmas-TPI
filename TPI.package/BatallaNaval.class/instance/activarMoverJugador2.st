faseAtaque
activarMoverJugador2
	(turnoActual = 1 or: [ turnoActual = 3 ])
		ifFalse: [ ^ self inform: '¡Solo podés mover barcos en fase de reconocimiento!' ].
	jugadorActualEnTurno = jugador2
		ifFalse: [ ^ self inform: 'No es tu turno.' ].
	modoMoverActivado := true.
	jugadorQueAtaca := jugador2.
	self inform: 'Seleccioná un barco para mover.'