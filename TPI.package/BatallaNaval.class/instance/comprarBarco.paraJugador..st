faseCompra
comprarBarco: arg1 paraJugador: arg2
	faseCompraActiva
		ifFalse: [ ^ self inform: 'La fase de compra ya terminó.' ].
	arg2 ~= jugadorQueColoca
		ifTrue: [ ^ self inform: 'No es tu turno para comprar.' ].
	arg2 fichasDisponibles < arg1 costo
		ifTrue: [ ^ self inform: 'No tenés fichas suficientes.' ].
	arg2 barcoSeleccionado: arg1.
	self inform: arg2 nombre , ' seleccionó un ' , arg1 name