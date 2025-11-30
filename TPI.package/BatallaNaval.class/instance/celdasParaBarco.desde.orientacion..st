accessing
celdasParaBarco: arg1 desde: arg2 orientacion: arg3
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp8 tmp9 tmp10 tmp11 tmp12 tmp13 tmp14 tmp15 tmp16 tmp17 |
	tmp1 := arg2 fila.
	tmp2 := arg2 columna.
	tmp4 := arg1 tamaño.
	tmp3 := arg2 jugador tablero.
	tmp5 := OrderedCollection new.
	arg3 = #horizontal
		ifTrue: [ tmp6 := tmp4.
			tmp7 := tmp6.
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
			1 to: tmp17 do: [ :tmp18 | 
				tmp2 + tmp18 - 1 > 12
					ifTrue: [ ^ #() ].
				tmp5 add: (tmp3 at: tmp1 at: tmp2 + tmp18 - 1) ] ]
		ifFalse: [ tmp6 := tmp4.
			tmp7 := tmp6.
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
			1 to: tmp17 do: [ :tmp18 | 
				tmp1 + tmp18 - 1 > 12
					ifTrue: [ ^ #() ].
				tmp5 add: (tmp3 at: tmp1 + tmp18 - 1 at: tmp2) ] ].
	^ tmp5