faseCompra
actualizarLabelFichas: unJugador
	| labelFichas |
	"Determina a qué etiqueta pertenece el jugador"
	unJugador == jugador1
		ifTrue: [ labelFichas := labelFichasJ1 ]
		ifFalse: [ labelFichas := labelFichasJ2 ].
		
	"Actualiza el texto de la etiqueta con la cantidad actual de fichas"
	labelFichas contents: ('Fichas restantes: ' , unJugador fichasDisponibles printString)