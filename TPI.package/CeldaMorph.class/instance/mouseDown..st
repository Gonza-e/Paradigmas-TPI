accessing
mouseDown: arg1
	| tmp1 |
	tmp1 := jugador controlador.
	tmp1 faseCompraActiva
		ifTrue: [ ^ tmp1 procesarClicDeColocacion: self ].
	tmp1 modoRadarActivado
		ifTrue: [ ^ tmp1 procesarClicEnCelda: self ].
	tmp1 modoAtaqueActivado
		ifTrue: [ ^ tmp1 procesarClicEnCelda: self ].
	tmp1 modoMoverActivado
		ifTrue: [ ^ tmp1 procesarClicEnCelda: self ]