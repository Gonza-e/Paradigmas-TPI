boton
crearBotonesParaAtaque: arg1 enPosicion: arg2
	| tmp1 tmp3 tmp4 |
	tmp1 := OrderedCollection new.
	tmp3 := 0.
	arg1 barcosComprados
		do: [ :arg3 | 
			tmp4 := SimpleButtonMorph new.
			tmp4
				label: arg3 nombreDeBarco;
				target: self;
				actionSelector: #seleccionarBarco:paraJugador:;
				arguments:
					{arg3.
					arg1};
				position: arg2 + (0 @ (tmp3 * 50));
				extent: 120 @ 35;
				color: Color black.
			ventanaBatalla addMorph: tmp4.
			tmp1 add: tmp4.
			tmp3 := tmp3 + 1 ].
	arg1 == jugador1
		ifTrue: [ botonesJuegoJ1 := tmp1 ].
	arg1 == jugador2
		ifTrue: [ botonesJuegoJ2 := tmp1 ]