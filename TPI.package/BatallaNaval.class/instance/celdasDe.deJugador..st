accessing
celdasDe: arg1 deJugador: arg2
	| tmp1 |
	tmp1 := OrderedCollection new.
	arg2 tablero
		do: [ :arg3 | 
			arg3
				do: [ :arg4 | 
					arg4 barcoAsociado = arg1
						ifTrue: [ tmp1 add: arg4 ] ] ].
	^ tmp1