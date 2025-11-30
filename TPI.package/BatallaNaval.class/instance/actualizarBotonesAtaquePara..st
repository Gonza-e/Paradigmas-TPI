boton
actualizarBotonesAtaquePara: arg1
	| tmp1 |
	arg1 == jugador1
		ifTrue: [ tmp1 := botonesJuegoJ1 ]
		ifFalse: [ tmp1 := botonesJuegoJ2 ].
	tmp1 ifNotNil: [ tmp1 do: [ :arg2 | arg2 delete ] ].
	self
		crearBotonesParaAtaque: arg1
		enPosicion:
			(arg1 == jugador1
				ifTrue: [ 460 @ 100 ]
				ifFalse: [ 1100 @ 100 ])