preparacion
prepararAtaqueSubmarino
	| tmp1 |
	barcoDeAtaqueSeleccionado := Submarino new.
	tmp1 := self.
	tmp1
		mostrarBotonAtaque;
		inform: 'Submarino seleccionado. Haga clic en ATACAR! para confirmar el ataque.'