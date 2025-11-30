faseCompra
cambiarOrientacion
	orientacionActual := orientacionActual = #horizontal
		ifTrue: [ #vertical ]
		ifFalse: [ #horizontal ].
	botonRotacionJ1
		ifNotNil: [ botonRotacionJ1
				label:
					(orientacionActual = #horizontal
						ifTrue: [ 'HORIZONTAL' ]
						ifFalse: [ 'VERTICAL' ]) ].
	botonRotacionJ2
		ifNotNil: [ botonRotacionJ2
				label:
					(orientacionActual = #horizontal
						ifTrue: [ 'HORIZONTAL' ]
						ifFalse: [ 'VERTICAL' ]) ].
	self inform: 'Modo de colocación: ' , orientacionActual asString