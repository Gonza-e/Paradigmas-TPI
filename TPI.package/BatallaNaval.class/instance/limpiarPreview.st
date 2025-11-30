faseCompra
limpiarPreview
	celdasPreview do: [:c |
		(c fueGolpeada)
			ifTrue: [ c color: Color darkGray ]
			ifFalse: [
				c ocupadaPorBarco
					ifTrue: [ c color: Color gray ]
					ifFalse: [
						c esIsla ifTrue: [ c color: Color yellow ]
							ifFalse: [
								c esMina ifTrue: [ c color: Color red ]
									ifFalse: [ c color: Color blue ]]]]].

	celdasPreview := OrderedCollection new.
