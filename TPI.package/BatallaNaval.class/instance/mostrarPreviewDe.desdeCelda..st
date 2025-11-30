faseCompra
mostrarPreviewDe: barco desdeCelda: celda
	| celdas valido |

	"Limpiar preview anterior"
	self limpiarPreview.

	"Obtener las celdas donde iría el barco"
	celdas := self celdasParaBarco: barco desde: celda orientacion: orientacionActual.

	celdas isEmpty ifTrue: [ ^ self ]. "Se salió del tablero"

	"Validar si se puede colocar"
	valido := celdas allSatisfy: [:c |
		c puedeColocarseBarco
	].

	"Pintar ghost"
	celdas do: [:c |
		celdasPreview add: c.
		c color: (valido ifTrue: [ Color green ] ifFalse: [ Color red ]).
	].
