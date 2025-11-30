initialization
initialize
	super initialize.
	tablero := nil.
	barcoSeleccionado := nil.
	barcosAColocar := OrderedCollection new.
	barcosComprados := OrderedCollection new.
	fichasDisponibles := 10.
	radarDisponible := 200.
	movDisponible := 15.
	nombre := 'Jugador'