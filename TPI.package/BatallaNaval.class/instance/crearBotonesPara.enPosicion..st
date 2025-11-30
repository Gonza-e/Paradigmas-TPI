boton
crearBotonesPara: arg1 enPosicion: arg2
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp8 tmp9 tmp10 tmp11 tmp12 tmp13 tmp14 tmp15 tmp16 tmp17 tmp18 tmp19 tmp20 tmp21 tmp22 tmp23 tmp24 tmp25 tmp26 tmp27 tmp28 tmp29 tmp30 |
	tmp1 := #('Destructor' 'Submarino' 'Acorazado' 'Portaaviones' 'Crucero').
	tmp2 := {Destructor.
	Submarino.
	Acorazado.
	Portaaviones.
	Crucero}.
	tmp3 := tmp1 size.
	tmp5 := tmp3.
	tmp6 := tmp5.
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
	tmp18 := tmp17.
	tmp19 := tmp18.
	tmp20 := tmp19.
	tmp21 := tmp20.
	tmp22 := tmp21.
	tmp23 := tmp22.
	tmp24 := tmp23.
	tmp25 := tmp24.
	tmp26 := tmp25.
	tmp27 := tmp26.
	tmp28 := tmp27.
	tmp29 := tmp28.
	tmp30 := tmp29.
	1 to: tmp30 do: [ :tmp31 | 
		tmp4 := nil.
		tmp4 := SimpleButtonMorph new.
		tmp4
			label: (tmp1 at: tmp31);
			target: self;
			actionSelector: #seleccionarBarco:paraJugador:;
			arguments:
				{(tmp2 at: tmp31).
				arg1};
			position: arg2 + (0 @ ((tmp31 - 1) * 60));
			extent: 100 @ 40;
			color: Color orange.
		ventana addMorph: tmp4 ]