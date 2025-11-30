initialize
initialize
	super initialize.
	tamaño := 12.
	jugador1 := Jugador new.
	jugador1 nombre: 'Jugador 1'.
	jugador2 := Jugador new.
	jugador2 nombre: 'Jugador 2'.
	jugador1 controlador: self.
	jugador2 controlador: self.
	modoRadarActivado := false.
	orientacionHorizontal := true.
	celdasPreview := OrderedCollection new.
	orientacionActual := #horizontal.
	modoMoverActivado := false.
	barcoEnMovimiento := nil.
	jugadorQueAtaca := jugador1.
	turnoActual := 1.
	jugadorActualEnTurno := jugador1.
	turnosRadarDeshabilitado := 0.
	generadorAleatorio := Random new.
	self actualizarVisibilidadBotonesJugador