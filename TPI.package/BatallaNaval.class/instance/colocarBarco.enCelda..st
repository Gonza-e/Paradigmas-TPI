faseCompra
colocarBarco: arg1 enCelda: arg2
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp8 tmp9 tmp10 tmp11 tmp12 tmp13 tmp14 tmp15 tmp16 tmp17 tmp18 |
	tmp1 := jugadorQueColoca tablero.
	tmp2 := arg2 fila.
	tmp3 := arg2 columna.
	tmp4 := arg1 tamaño.
	tmp5 := OrderedCollection new.
	orientacionActual = #horizontal
		ifTrue: [ tmp7 := tmp4.
			tmp8 := tmp7.
			tmp9 := tmp8.
			tmp10 := tmp9.
			tmp11 := tmp10.
			tmp12 := tmp11.
			tmp13 := tmp12.
			tmp14 := tmp13.
			tmp15 := tmp14.
			tmp16 := tmp15.
			tmp17 := tmp16.
			tmp18 := tmp17.
			1 to: tmp18 do: [ :tmp19 | 
				tmp3 + tmp19 - 1 > 12
					ifTrue: [ ^ false ].
				tmp5 add: (tmp1 at: tmp2 at: tmp3 + tmp19 - 1) ] ]
		ifFalse: [ tmp7 := tmp4.
			tmp8 := tmp7.
			tmp9 := tmp8.
			tmp10 := tmp9.
			tmp11 := tmp10.
			tmp12 := tmp11.
			tmp13 := tmp12.
			tmp14 := tmp13.
			tmp15 := tmp14.
			tmp16 := tmp15.
			tmp17 := tmp16.
			tmp18 := tmp17.
			1 to: tmp18 do: [ :tmp19 | 
				tmp2 + tmp19 - 1 > 12
					ifTrue: [ ^ false ].
				tmp5 add: (tmp1 at: tmp2 + tmp19 - 1 at: tmp3) ] ].
	(tmp5
		anySatisfy: [ :arg3 | arg3 ocupadaPorBarco | arg3 esIsla | arg3 esMina ])
		ifTrue: [ ^ false ].
	tmp6 := arg1 new.
	jugadorQueColoca
		fichasDisponibles: jugadorQueColoca fichasDisponibles - tmp6 costo.
	self actualizarLabelFichas: jugadorQueColoca.
	jugadorQueColoca barcosComprados add: tmp6.
	jugadorQueColoca barcosAColocar add: tmp6.
	tmp5
		do: [ :arg4 | 
			| tmp20 |
			tmp20 := arg4.
			tmp20
				ocupadaPorBarco: true;
				barcoAsociado: tmp6;
				color: Color gray ].
	^ true