preparacion
prepararAtaqueAcorazado
	| tmp1 |
	barcoDeAtaqueSeleccionado := Acorazado new.
	tmp1 := self.
	tmp1
		mostrarBotonAtaque;
		inform: 'Acorazado seleccionado. Haga clic en ATACAR! para confirmar el ataque.'