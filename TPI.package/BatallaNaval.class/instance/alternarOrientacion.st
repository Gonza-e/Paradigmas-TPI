preparacion
alternarOrientacion
	orientacionHorizontal := orientacionHorizontal not.

	orientacionHorizontal
		ifTrue: [ self inform: 'Orientación: HORIZONTAL' ]
		ifFalse: [ self inform: 'Orientación: VERTICAL' ].
