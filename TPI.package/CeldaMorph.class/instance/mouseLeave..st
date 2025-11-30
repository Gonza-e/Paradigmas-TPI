accessing
mouseLeave: arg1
	| tmp1 |
	tmp1 := jugador controlador.
	(tmp1 faseCompraActiva and: [ jugador = tmp1 jugadorQueColoca ])
		ifTrue: [ tmp1 limpiarPreview ]