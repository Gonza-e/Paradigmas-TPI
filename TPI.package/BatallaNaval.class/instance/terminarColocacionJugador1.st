faseCompra
terminarColocacionJugador1
	| tmp1 |
	jugadorQueColoca := jugador2.
	self ocultarTableroDe: jugador1.
	(Delay forSeconds: 3) wait.
	tmp1 := self.
	tmp1
		mostrarTableroDe: jugador2;
		inform: 'Jugador 1 listo. Turno de Jugador 2.'