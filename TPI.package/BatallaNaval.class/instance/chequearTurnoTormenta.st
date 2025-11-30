eventos
chequearTurnoTormenta
	turnosRadarDeshabilitado > 0
		ifTrue: [ turnosRadarDeshabilitado := turnosRadarDeshabilitado - 1.
			turnosRadarDeshabilitado = 0
				ifTrue: [ | tmp2 |
					tmp2 := self.
					tmp2
						inform: 'La tormenta ha pasado. El radar vuelve a estar disponible.';
						actualizarBotonesParaTurnoActual ]
				ifFalse: [ self
						inform:
							'La tormenta continúa. Radar deshabilitado (Turnos restantes: '
								, turnosRadarDeshabilitado asString , ').' ] ]