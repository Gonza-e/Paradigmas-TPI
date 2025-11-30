faseAtaque
activarMoverJugador1
	(turnoActual = 1 or: [ turnoActual = 3 ])
		ifFalse: [ ^ self inform: '¡Solo podés mover barcos en fase de reconocimiento!' ].
	jugadorActualEnTurno = jugador1
		ifFalse: [ ^ self inform: 'No es tu turno.' ].
	modoMoverActivado := true.
	jugadorQueAtaca := jugador1.
	self inform: 'Seleccioná un barco para mover.'