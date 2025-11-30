preparacion
prepararAtaqueDestructor
	| tmp1 |
	barcoDeAtaqueSeleccionado := Destructor new.
	tmp1 := self.
	tmp1
		mostrarBotonAtaque;
		inform: 'Destructor seleccionado. Haga clic en ATACAR! para confirmar el ataque.'