faseCompra
procesarClicDeColocacion: arg1
	self limpiarPreview.
	jugadorQueColoca ~= arg1 jugador
		ifTrue: [ ^ self inform: 'No es tu turno para colocar.' ].
	jugadorQueColoca barcoSeleccionado
		ifNil: [ ^ self inform: 'Primero comprá un barco.' ].
	(self colocarBarco: jugadorQueColoca barcoSeleccionado enCelda: arg1)
		ifTrue: [ jugadorQueColoca barcoSeleccionado: nil.
			^ self inform: 'Barco colocado. Podés comprar más o apretar LISTO.' ].
	^ self inform: 'No se puede colocar el barco en esa posición.'