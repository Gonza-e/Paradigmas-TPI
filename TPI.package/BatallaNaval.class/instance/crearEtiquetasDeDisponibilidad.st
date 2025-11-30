nuevo
crearEtiquetasDeDisponibilidad
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 |
	tmp2 := LabelMorph new.
	tmp2
		contents: 'Movimientos: ' , jugador1 movDisponible asString;
		position: 80 @ 80.
	labelMovJ1 := tmp2 yourself.
	tmp3 := LabelMorph new.
	tmp4 := LabelMorph new.
	tmp4
		contents: 'Movimientos: ' , jugador2 movDisponible asString;
		position: 720 @ 80.
	labelMovJ2 := tmp4 yourself.
	tmp5 := ventanaBatalla.
	tmp5
		ifNotNil: [ tmp5
				addMorph: labelMovJ1;
				addMorph: labelMovJ2 ].
	tmp6 := self.
	tmp6
		actualizarDisponibilidadDe: jugador1;
		actualizarDisponibilidadDe: jugador2