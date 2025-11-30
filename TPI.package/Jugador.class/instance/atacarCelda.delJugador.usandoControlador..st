hacer
atacarCelda: arg1 delJugador: arg2 usandoControlador: arg3
	barcoSeleccionado
		ifNil: [ ^ arg3 inform: 'Debes seleccionar un barco antes de atacar.' ].
	barcoSeleccionado ataqueEn: arg1 usando: arg3