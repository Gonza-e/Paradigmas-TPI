faseCompra
abrirVentanaDeColocacion
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp7 |
	ventanaColocacion := SystemWindow labelled: 'Colocación de Barcos'.
	ventanaColocacion extent: 1400 @ 750.
	jugador1 crearTableroEn: ventanaColocacion enPosicion: 80 @ 100.
	jugador2 crearTableroEn: ventanaColocacion enPosicion: 720 @ 100.
	tmp3 := self.
	tmp3
		crearBotonesParaCompra: jugador1 enPosicion: 460 @ 100;
		crearBotonesParaCompra: jugador2 enPosicion: 1100 @ 100.
	labelFichasJ1 := TextMorph new.
	tmp5 := labelFichasJ1.
	tmp5
		position: 460 @ 50;
		extent: 250 @ 20;
		color: Color white;
		contents: 'Fichas restantes: ' , jugador1 fichasDisponibles printString.
	labelFichasJ2 := TextMorph new.
	tmp6 := labelFichasJ2.
	tmp6
		position: 1100 @ 50;
		extent: 250 @ 20;
		color: Color white;
		contents: 'Fichas restantes: ' , jugador2 fichasDisponibles printString.
	tmp7 := ventanaColocacion.
	tmp7
		addMorph: labelFichasJ1;
		addMorph: labelFichasJ2.
	tmp1 := SimpleButtonMorph new.
	tmp1
		label: 'LISTO';
		target: self;
		actionSelector: #terminarColocacionJugador1;
		position: 460 @ 450;
		extent: 120 @ 50.
	botonListoJ1 := tmp1 color: Color green.
	tmp2 := SimpleButtonMorph new.
	tmp2
		label: 'LISTO';
		target: self;
		actionSelector: #terminarColocacionJugador2;
		position: 1100 @ 450;
		extent: 120 @ 50.
	botonListoJ2 := tmp2 color: Color green.
	self ocultarTableroDe: jugador2.
	tmp4 := ventanaColocacion.
	tmp4
		addMorph: botonListoJ1;
		addMorph: botonListoJ2;
		openInWorldExtent: 1300 @ 550