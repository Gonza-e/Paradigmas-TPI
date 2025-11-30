boton
mostrarBotonAtaque: arg1
	arg1 == jugador1
		ifTrue: [ botonAtacarJ1 show.
			botonAtacarJ2 hide ].
	arg1 == jugador2
		ifTrue: [ botonAtacarJ2 show.
			botonAtacarJ1 hide ].
	arg1 == jugador1
		ifTrue: [ botonRadarJ1 ifNotNil: [ botonRadarJ1 show ].
			botonRadarJ2 ifNotNil: [ botonRadarJ2 hide ] ].
	arg1 == jugador2
		ifTrue: [ botonRadarJ2 ifNotNil: [ botonRadarJ2 show ].
			botonRadarJ1 ifNotNil: [ botonRadarJ1 hide ] ]