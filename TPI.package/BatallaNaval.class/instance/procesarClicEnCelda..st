celdas
procesarClicEnCelda: arg1
	| tmp1 |
	modoMoverActivado
		ifTrue: [ ^ self procesarMovimientoEn: arg1 ].
	modoRadarActivado
		ifTrue: [ arg1 jugador = jugadorQueAtaca
				ifTrue: [ self inform: '¡No podés usar el radar en tu propio tablero!'.
					^ self ].
			self procesarRadarEn: arg1.
			modoRadarActivado := false.
			self cambiarAJugadorSiguienteEnTurno.
			^ self ].
	modoAtaqueActivado
		ifFalse: [ ^ self
				inform: 'Primero apretá el botón correspondiente al turno actual.' ].
	barcoDeAtaqueSeleccionado
		ifNil: [ ^ self inform: 'Seleccioná un barco antes de atacar.' ].
	arg1 jugador = jugadorQueAtaca
		ifTrue: [ ^ self inform: 'No podés atacar tu propio tablero.' ].
	barcoDeAtaqueSeleccionado ataqueEn: arg1 usando: self.
	modoAtaqueActivado := false.
	barcoDeAtaqueSeleccionado := nil.
	tmp1 := self.
	tmp1
		inform: 'Ataque realizado.';
		actualizarVisibilidadTableros;
		cambiarAJugadorSiguienteEnTurno