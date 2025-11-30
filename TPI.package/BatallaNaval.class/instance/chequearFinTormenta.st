eventos
chequearFinTormenta
	turnosRadarDeshabilitado > 0
		ifTrue: [ turnosRadarDeshabilitado := turnosRadarDeshabilitado - 1.
			turnosRadarDeshabilitado = 0
				ifTrue: [ self inform: 'La tormenta ha pasado. Radares operativos.' ]
				ifFalse: [ self inform: 'Tormenta activa. Radares inoperativos.' ] ]