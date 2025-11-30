turno
informarTurnoActual
	turnoActual = 1
		ifTrue: [ self inform: 'Turno de RADAR. Solo puedes usar radar.' ].
	turnoActual = 2
		ifTrue: [ self inform: 'Turno de ATAQUE. Solo puedes usar ataque.' ]