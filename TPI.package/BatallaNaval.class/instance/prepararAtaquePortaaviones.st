preparacion
prepararAtaquePortaaviones
	| tmp1 |
	barcoDeAtaqueSeleccionado := Portaaviones new.
	tmp1 := self.
	tmp1
		mostrarBotonAtaque;
		inform: 'Portaaviones seleccionado. Haga clic en ATACAR! para confirmar el ataque.'