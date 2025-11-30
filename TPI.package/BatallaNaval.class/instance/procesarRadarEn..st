faseAtaque
procesarRadarEn: arg1
	| tmp1 tmp2 tmp3 tmp4 tmp5 |
	jugadorQueAtaca radarDisponible = 0
		ifTrue: [ ^ self inform: 'Ya usaste el RADAR las 5 veces permitidas.' ].
	jugadorQueAtaca radarDisponible: jugadorQueAtaca radarDisponible - 1.
	self actualizarDisponibilidadDe: jugadorQueAtaca.
	tmp1 := arg1 jugador tablero.
	tmp2 := arg1 fila.
	tmp3 := arg1 columna.
	tmp4 := OrderedCollection with: arg1.
	tmp2 > 1
		ifTrue: [ tmp4 add: (tmp1 at: tmp2 - 1 at: tmp3) ].
	tmp2 < 12
		ifTrue: [ tmp4 add: (tmp1 at: tmp2 + 1 at: tmp3) ].
	tmp3 > 1
		ifTrue: [ tmp4 add: (tmp1 at: tmp2 at: tmp3 - 1) ].
	tmp3 < 12
		ifTrue: [ tmp4 add: (tmp1 at: tmp2 at: tmp3 + 1) ].
	tmp5 := tmp4 anySatisfy: [ :arg2 | arg2 ocupadaPorBarco ].
	tmp5
		ifTrue: [ self
				inform: 'RADAR IDENTIFICÓ EXISTENCIA DE UNA EMBARCACIÓN EN LA ZONA.' ]
		ifFalse: [ self
				inform: 'RADAR NO IDENTIFICÓ NINGUNA PRESENCIA DE EMBARCACIONES EN LA ZONA.' ].
	self actualizarVisibilidadTableros