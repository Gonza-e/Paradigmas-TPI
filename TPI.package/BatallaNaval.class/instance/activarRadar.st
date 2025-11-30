accessing
activarRadar
	turnosRadarDeshabilitado > 0
		ifTrue: [ ^ self
				inform: '¡Interferencia atmosférica! El radar no funciona durante la tormenta.' ].
	modoRadarActivado := true.
	modoAtaqueActivado := false.
	self inform: 'RADAR ACTIVADO. Hacé clic en el tablero enemigo.'