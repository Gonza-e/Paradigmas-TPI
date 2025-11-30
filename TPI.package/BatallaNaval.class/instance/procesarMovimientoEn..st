faseAtaque
procesarMovimientoEn: arg1
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp8 tmp9 tmp10 tmp11 tmp12 tmp13 tmp14 tmp15 tmp16 tmp17 tmp18 tmp19 tmp20 tmp21 tmp22 tmp23 tmp24 tmp25 tmp26 tmp27 tmp28 tmp29 tmp30 tmp31 tmp32 tmp33 tmp35 tmp37 tmp39 |
	self limpiarPreview.
	jugadorQueAtaca movDisponible <= 0
		ifTrue: [ ^ self inform: 'No tienes movimientos disponibles.' ].
	barcoEnMovimiento
		ifNil: [ (arg1 jugador ~= jugadorQueAtaca or: [ arg1 ocupadaPorBarco not ])
				ifTrue: [ ^ self inform: 'Hacé clic en uno de tus barcos.' ].
			barcoEnMovimiento := arg1 barcoAsociado.
			^ self inform: 'Elegí una nueva posición para el barco.' ].
	tmp1 := self
		celdasParaBarco: barcoEnMovimiento
		desde: arg1
		orientacion: orientacionActual.
	tmp1 isEmpty
		ifTrue: [ ^ self inform: 'Movimiento inválido (fuera del tablero).' ].
	tmp2 := tmp1
		allSatisfy: [ :arg2 | 
			(arg2 ocupadaPorBarco not
				or: [ arg2 barcoAsociado == barcoEnMovimiento ])
				and: [ arg2 esIsla not ] ].
	tmp2
		ifFalse: [ ^ self inform: 'Esa posición está bloqueada.' ].
	tmp3 := jugadorQueAtaca tablero.
	tmp4 := tmp3 numberOfRows.
	tmp7 := tmp4.
	tmp9 := tmp7.
	tmp11 := tmp9.
	tmp13 := tmp11.
	tmp15 := tmp13.
	tmp17 := tmp15.
	tmp19 := tmp17.
	tmp21 := tmp19.
	tmp24 := tmp21.
	tmp26 := tmp24.
	tmp28 := tmp26.
	tmp30 := tmp28.
	tmp32 := tmp30.
	tmp35 := tmp32.
	1 to: tmp35 do: [ :tmp36 | 
		tmp5 := tmp3 numberOfColumns.
		tmp8 := tmp5.
		tmp10 := tmp8.
		tmp12 := tmp10.
		tmp14 := tmp12.
		tmp16 := tmp14.
		tmp18 := tmp16.
		tmp20 := tmp18.
		tmp22 := tmp20.
		tmp25 := tmp22.
		tmp27 := tmp25.
		tmp29 := tmp27.
		tmp31 := tmp29.
		tmp33 := tmp31.
		tmp37 := tmp33.
		1 to: tmp37 do: [ :tmp38 | 
			tmp6 := nil.
			tmp6 := tmp3 at: tmp36 at: tmp38.
			tmp6 barcoAsociado == barcoEnMovimiento
				ifTrue: [ tmp6
						barcoAsociado: nil;
						ocupadaPorBarco: false;
						color: Color blue ] ] ].
	tmp39 := false.
	tmp1
		do: [ :arg3 | 
			| tmp40 |
			arg3 esMina
				ifTrue: [ tmp39 := true.
					arg3 esMina: false ].
			tmp40 := arg3.
			tmp40
				ocupadaPorBarco: true;
				barcoAsociado: barcoEnMovimiento;
				color: Color gray ].
	tmp39
		ifTrue: [ barcoEnMovimiento impactos: barcoEnMovimiento impactos + 1.
			barcoEnMovimiento impactos >= barcoEnMovimiento tamaño
				ifTrue: [ self hundirBarco: barcoEnMovimiento de: jugadorQueAtaca.
					barcoEnMovimiento := nil.
					modoMoverActivado := false.
					^ self inform: '¡Barco hundido al pisar una mina!' ].
			^ self inform: '¡Pisaste una mina! El barco recibió daño.' ].
	tmp23 := self.
	tmp23
		inform: '¡Barco movido!';
		inform: '¡Barco movido!'.
	jugadorQueAtaca movDisponible: jugadorQueAtaca movDisponible - 1.
	self actualizarDisponibilidadDe: jugadorQueAtaca.
	barcoEnMovimiento := nil.
	modoMoverActivado := false.
	self cambiarAJugadorSiguienteEnTurno