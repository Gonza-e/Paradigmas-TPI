faseAtaque
abrirVentanaDeBatalla
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 tmp8 tmp9 |
	ventanaBatalla := SystemWindow labelled: 'Batalla Naval'.
	ventanaBatalla extent: 1400 @ 750.
	jugador1 moverTableroA: ventanaBatalla enPosicion: 80 @ 100.
	jugador2 moverTableroA: ventanaBatalla enPosicion: 720 @ 100.
	tmp3 := self.
	tmp3
		crearBotonesParaAtaque: jugador1 enPosicion: 460 @ 100;
		crearBotonesParaAtaque: jugador2 enPosicion: 1100 @ 100.
	tmp1 := SimpleButtonMorph new.
	tmp1
		label: 'ATACAR';
		target: self;
		actionSelector: #activarAtaqueJugador1;
		position: 80 @ 460;
		extent: 120 @ 50.
	botonAtacarJ1 := tmp1 color: Color red.
	tmp2 := SimpleButtonMorph new.
	tmp2
		label: 'ATACAR';
		target: self;
		actionSelector: #activarAtaqueJugador2;
		position: 720 @ 460;
		extent: 120 @ 50;
		hide.
	botonAtacarJ2 := tmp2 color: Color red.
	tmp4 := ventanaBatalla.
	tmp4
		addMorph: botonAtacarJ1;
		addMorph: botonAtacarJ2.
	botonRadarJ1 := SimpleButtonMorph new.
	tmp5 := botonRadarJ1.
	tmp5
		label: 'RADAR';
		target: self;
		actionSelector: #activarRadarJugador1;
		position: 210 @ 460;
		extent: 120 @ 50;
		color: Color green.
	ventanaBatalla addMorph: botonRadarJ1.
	botonRadarJ2 := SimpleButtonMorph new.
	tmp6 := botonRadarJ2.
	tmp6
		label: 'RADAR';
		target: self;
		actionSelector: #activarRadarJugador2;
		position: 850 @ 460;
		extent: 120 @ 50;
		color: Color green;
		hide.
	ventanaBatalla addMorph: botonRadarJ2.
	botonMovJ1 := SimpleButtonMorph new.
	tmp7 := botonMovJ1.
	tmp7
		label: 'MOVER';
		target: self;
		actionSelector: #activarMoverJugador1;
		position: 340 @ 460;
		extent: 120 @ 50;
		color: Color yellow.
	ventanaBatalla addMorph: botonMovJ1.
	botonMovJ2 := SimpleButtonMorph new.
	tmp8 := botonMovJ2.
	tmp8
		label: 'MOVER';
		target: self;
		actionSelector: #activarMoverJugador2;
		position: 980 @ 460;
		extent: 120 @ 50;
		color: Color yellow;
		hide.
	ventanaBatalla addMorph: botonMovJ2.
	jugadorQueAtaca := jugador1.
	modoAtaqueActivado := false.
	tmp9 := self.
	tmp9
		crearEtiquetasDeDisponibilidad;
		actualizarVisibilidadTableros.
	ventanaBatalla openInWorldExtent: 1300 @ 550