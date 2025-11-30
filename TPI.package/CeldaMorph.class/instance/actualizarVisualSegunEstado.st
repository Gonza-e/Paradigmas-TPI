accessing
actualizarVisualSegunEstado
	fueGolpeada
		ifTrue: [ self color: Color darkGray ]
		ifFalse: [ ocupadaPorBarco
				ifTrue: [ self color: Color gray ]
				ifFalse: [ esIsla
						ifTrue: [ self color: Color yellow ]
						ifFalse: [ esMina
								ifTrue: [ self color: Color red ]
								ifFalse: [ self color: Color blue ] ] ] ]