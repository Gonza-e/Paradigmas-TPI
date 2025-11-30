boton
crearBotonesParaCompra: arg1 enPosicion: arg2
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp8 tmp9 tmp10 tmp11 tmp12 tmp13 tmp14 tmp15 tmp16 tmp17 tmp18 tmp19 tmp20 tmp21 tmp22 tmp23 tmp24 tmp25 tmp26 |
	tmp2 := #('Destructor ($2)' 'Submarino ($3)' 'Acorazado ($5)' 'Portaaviones ($4)' 'Crucero ($2)').
	tmp3 := {Destructor.
	Submarino.
	Acorazado.
	Portaaviones.
	Crucero}.
	tmp1 := OrderedCollection new.
	tmp5 := tmp2 size.
	tmp6 := tmp5.
	tmp7 := tmp6.
	tmp9 := tmp7.
	tmp10 := tmp9.
	tmp12 := tmp10.
	tmp13 := tmp12.
	tmp14 := tmp13.
	tmp15 := tmp14.
	tmp16 := tmp15.
	tmp17 := tmp16.
	tmp18 := tmp17.
	tmp19 := tmp18.
	tmp20 := tmp19.
	tmp21 := tmp20.
	tmp22 := tmp21.
	tmp23 := tmp22.
	tmp24 := tmp23.
	tmp25 := tmp24.
	tmp26 := tmp25.
	1 to: tmp26 do: [ :tmp27 | 
		tmp4 := SimpleButtonMorph new.
		tmp4
			label: (tmp2 at: tmp27);
			target: self;
			actionSelector: #comprarBarco:paraJugador:;
			arguments:
				{(tmp3 at: tmp27).
				arg1};
			position: arg2 + (0 @ ((tmp27 - 1) * 60));
			extent: 100 @ 40;
			color: Color orange.
		ventanaColocacion addMorph: tmp4.
		tmp1 add: tmp4 ].
	arg1 == jugador1
		ifTrue: [ botonesCompraJ1 := tmp1 ].
	arg1 == jugador2
		ifTrue: [ botonesCompraJ2 := tmp1 ].
	tmp11 := SimpleButtonMorph new.
	tmp11
		label:
			(orientacionActual = #horizontal
				ifTrue: [ 'HORIZONTAL' ]
				ifFalse: [ 'VERTICAL' ]);
		target: self;
		actionSelector: #cambiarOrientacion;
		position: arg2 + (0 @ (tmp2 size * 60));
		color: Color veryLightGray.
	ventanaColocacion addMorph: tmp11.
	arg1 == jugador1
		ifTrue: [ botonRotacionJ1 := tmp11 ]
		ifFalse: [ botonRotacionJ2 := tmp11 ]