turno
actualizarBotonesParaTurnoActual
	self esTurnoRadar
		ifTrue: [ botonAtacarJ1 ifNotNil: [ botonAtacarJ1 hide ].
			botonAtacarJ2 ifNotNil: [ botonAtacarJ2 hide ].
			botonRadarJ1 ifNotNil: [ botonRadarJ1 show ].
			botonRadarJ2 ifNotNil: [ botonRadarJ2 show ] ]
		ifFalse: [ botonRadarJ1 ifNotNil: [ botonRadarJ1 hide ].
			botonRadarJ2 ifNotNil: [ botonRadarJ2 hide ].
			botonAtacarJ1 ifNotNil: [ botonAtacarJ1 show ].
			botonAtacarJ2 ifNotNil: [ botonAtacarJ2 show ] ]