accessing
mouseMove: arg1
	| tmp1 |
	super mouseMove: arg1.
	tmp1 := jugador controlador.
	(tmp1 modoMoverActivado and: [ tmp1 barcoEnMovimiento notNil ])
		ifTrue: [ tmp1 mostrarPreviewDe: tmp1 barcoEnMovimiento desdeCelda: self.
			^ self ].
	(tmp1 faseCompraActiva and: [ jugador = tmp1 jugadorQueColoca ])
		ifTrue: [ jugador barcoSeleccionado
				ifNotNil: [ tmp1 mostrarPreviewDe: jugador barcoSeleccionado desdeCelda: self ] ]