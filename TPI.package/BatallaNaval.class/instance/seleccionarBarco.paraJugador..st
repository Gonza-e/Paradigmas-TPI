boton
seleccionarBarco: arg1 paraJugador: arg2
	| tmp2 |
	barcoDeAtaqueSeleccionado := arg1 class new.
	tmp2 := self.
	tmp2
		inform: arg2 nombre , ' seleccionó ' , arg1 class name;
		mostrarBotonAtaque: arg2