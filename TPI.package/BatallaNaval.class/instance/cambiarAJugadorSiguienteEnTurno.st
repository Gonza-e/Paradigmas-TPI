turno
cambiarAJugadorSiguienteEnTurno
	jugadorActualEnTurno = jugador1
		ifTrue: [ jugadorActualEnTurno := jugador2.
			self inform: 'Ahora es el turno del Jugador 2.' ]
		ifFalse: [ self siguienteTurno.
			jugadorActualEnTurno := jugador1.
			self inform: 'Comienza un nuevo turno con el Jugador 1.' ].
	self ocultarTablerosTemporalmente.
	[ | tmp1 |
	(Delay forSeconds: 3) wait.
	tmp1 := self.
	tmp1
		actualizarDisponibilidadDe: jugador1;
		actualizarDisponibilidadDe: jugador2;
		actualizarVisibilidadBotonesJugador;
		actualizarVisibilidadTableros ] fork