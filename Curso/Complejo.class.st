Class {
	#name : #Complejo,
	#superclass : #Object,
	#instVars : [
		'real',
		'imaginario'
	],
	#category : #Curso
}

{ #category : #arithmetic }
Complejo >> * otroComplejo [
	"multiplicacion de numeros complejos"
			
	| num |
	num:= Complejo new. 
	num real: (self real * otroComplejo real) - (self imaginario * otroComplejo imaginario).
	num imaginario: (self real * otroComplejo imaginario) + (self imaginario * otroComplejo real).
	
^num
]

{ #category : #arithmetic }
Complejo >> + otroComplejo [
	"suma de numeros complejos"
	| num |
	num:= Complejo new.
	num real: self real + otroComplejo real.
	num imaginario: self imaginario + otroComplejo imaginario.
	
^num
]

{ #category : #arithmetic }
Complejo >> - otroComplejo [
	"suma de numeros complejos"
	| num |
	num:= Complejo new.
	num real: self real - otroComplejo real.
	num imaginario: self imaginario - otroComplejo imaginario.
	
^num
]

{ #category : #arithmetic }
Complejo >> / otroComplejo [
	"Division de dos numeros complejos"
	
	| num denominador |
	num:= Complejo new.
	denominador:= ((otroComplejo real raisedTo: 2) + (otroComplejo imaginario raisedTo: 2)).
	num real: ((self real * otroComplejo real) + (self imaginario * otroComplejo imaginario)) / denominador.
	num imaginario: ((self imaginario * otroComplejo real) - (self real * otroComplejo imaginario)) / denominador.
	
^num
]

{ #category : #testing }
Complejo >> = otroComplejo [ 
	"Comparar dos numeros complejos"
			
	^ (self real = otroComplejo real) and: [ self imaginario = otroComplejo imaginario ].
]

{ #category : #accessing }
Complejo >> imaginario [
	"Getter para la parte imaginaria"
			
	^imaginario
]

{ #category : #accessing }
Complejo >> imaginario: unImaginario [
	"Setter para la parte imaginaria"
			
	imaginario:= unImaginario
]

{ #category : #printing }
Complejo >> printOn: aStream [
	"Mostrar el valor del numero complejo en el formato (a + bi)"
	
	aStream nextPutAll: real asString.
	imaginario >= 0 ifTrue: [ aStream nextPutAll: ' + '. aStream nextPutAll: imaginario asString ]
	ifFalse: [ aStream nextPutAll: ' - '. aStream nextPutAll: (imaginario abs) asString ].
	
	aStream nextPutAll: 'i'.
]

{ #category : #accessing }
Complejo >> real [
	"Getter para la parte real"
			
	^real
]

{ #category : #accessing }
Complejo >> real: unReal [
	"Setter para la parte real"
			
	real:= unReal
]
