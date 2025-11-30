initialize
open
	jugador1 controlador: self.
	jugador2 controlador: self.
	jugadorQueColoca := jugador1.
	faseCompraActiva := true.
	self abrirVentanaDeColocacion