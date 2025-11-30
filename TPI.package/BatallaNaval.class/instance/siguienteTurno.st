turno
siguienteTurno
	| tmp1 |
	turnoActual := turnoActual \\ 2 + 1.
	self chequearFinTormenta.
	tmp1 := self.
	tmp1
		informarTurnoActual;
		actualizarBotonesParaTurnoActual.
	self procesarEventosAleatorios