nuevo
actualizarDisponibilidadDe: arg1
	| tmp1 tmp2 tmp3 tmp4 |
	arg1 == jugador1
		ifTrue: [ tmp1 := labelRadarJ1.
			tmp2 := labelMovJ1.
			tmp3 := botonRadarJ1.
			tmp4 := botonMovJ1 ]
		ifFalse: [ tmp1 := labelRadarJ2.
			tmp2 := labelMovJ2.
			tmp3 := botonRadarJ2.
			tmp4 := botonMovJ2 ].
	arg1 radarDisponible <= 0
		ifTrue: [ tmp3
				ifNotNil: [ tmp3 delete.
					arg1 == jugador1
						ifTrue: [ botonRadarJ1 := nil ]
						ifFalse: [ botonRadarJ2 := nil ] ] ]
		ifFalse: [ tmp3
				ifNotNil: [ tmp3 show.
					turnosRadarDeshabilitado > 0
						ifTrue: [ tmp3
								color: Color gray;
								label: 'SIN SEÑAL';
								extent: 120 @ 50;
								setBalloonText: 'Radar inoperativo por tormenta.';
								hide ]
						ifFalse: [ tmp3
								color: Color green;
								label: 'RADAR';
								extent: 120 @ 50;
								setBalloonText: nil ] ] ].
	tmp2
		ifNotNil: [ tmp2 contents: 'Movimientos: ' , arg1 movDisponible asString ].
	arg1 movDisponible <= 0
		ifTrue: [ tmp4
				ifNotNil: [ tmp4 delete.
					arg1 == jugador1
						ifTrue: [ botonMovJ1 := nil ]
						ifFalse: [ botonMovJ2 := nil ] ] ]
		ifFalse: [ tmp4 ifNotNil: [ tmp4 show ] ]