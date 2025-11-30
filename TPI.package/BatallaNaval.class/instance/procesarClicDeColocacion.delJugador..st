faseCompra
procesarClicDeColocacion: arg1 delJugador: arg2
	arg2 ~= jugadorQueColoca
		ifTrue: [ ^ self inform: 'No es tu turno para colocar.' ].
	arg2 barcoSeleccionado
		ifNil: [ ^ self inform: 'Primero comprá un barco.' ].
	(self colocarBarco: arg2 barcoSeleccionado enCelda: arg1)
		ifTrue: [ arg2 barcoSeleccionado: nil.
			self inform: 'Barco colocado.' ]