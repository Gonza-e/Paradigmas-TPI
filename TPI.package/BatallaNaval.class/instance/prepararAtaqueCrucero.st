preparacion
prepararAtaqueCrucero
	| tmp1 |
	barcoDeAtaqueSeleccionado := Crucero new.
	tmp1 := self.
	tmp1
		mostrarBotonAtaque.
	tmp1 inform: 'Crucero seleccionado. Haga clic en ATACAR! para confirmar el ataque.'.