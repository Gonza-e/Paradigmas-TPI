fin de juego
chequearFinDeJuego
	| tmp1 |
	jugador1 barcosComprados isEmpty
		ifTrue: [ tmp1 := jugador2 ].
	jugador2 barcosComprados isEmpty
		ifTrue: [ tmp1 := jugador1 ].
	tmp1 ifNotNil: [ self mostrarVictoriaDe: tmp1 ]