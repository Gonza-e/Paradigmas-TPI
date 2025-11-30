fin de juego
mostrarVictoriaDe: arg1
	| tmp1 tmp2 tmp3 |
	ventanaBatalla ifNotNil: [ ventanaBatalla delete ].
	ventanaColocacion ifNotNil: [ ventanaColocacion delete ].
	tmp1 := SystemWindow labelled: '¡Fin de la partida!'.
	tmp1 extent: 500 @ 200.
	tmp2 := Text
		string: '¡' , arg1 nombre , ' ganó la batalla!'
		attributes: (Array with: TextEmphasis bold).
	tmp3 := StringMorph contents: tmp2 asString.
	tmp3
		color: Color red;
		position: tmp1 center - (tmp3 extent // 2).
	tmp1
		addMorph: tmp3;
		openInWorld