turno
actualizarVisibilidadBotonesJugador
	jugadorActualEnTurno = jugador1
		ifTrue: [ botonRadarJ1 ifNotNil: [ botonRadarJ1 show ].
			botonAtacarJ1 ifNotNil: [ botonAtacarJ1 show ].
			botonMovJ1 ifNotNil: [ botonMovJ1 show ].
			botonRadarJ2 ifNotNil: [ botonRadarJ2 hide ].
			botonAtacarJ2 ifNotNil: [ botonAtacarJ2 hide ].
			botonMovJ2 ifNotNil: [ botonMovJ2 hide ] ]
		ifFalse: [ botonRadarJ1 ifNotNil: [ botonRadarJ1 hide ].
			botonAtacarJ1 ifNotNil: [ botonAtacarJ1 hide ].
			botonMovJ1 ifNotNil: [ botonMovJ1 hide ].
			botonRadarJ2 ifNotNil: [ botonRadarJ2 show ].
			botonAtacarJ2 ifNotNil: [ botonAtacarJ2 show ].
			botonMovJ2 ifNotNil: [ botonMovJ2 show ] ]