Class {
	#name : #Enteros,
	#superclass : #Object,
	#category : #Curso
}

{ #category : #arithmetic }
Enteros class >> divisores: n [
	"Metodo para calcular los divisores de un numero"
	
	| num resultado |
	
	resultado:= OrderedCollection new.
	num:= n.
	self verificar: num.
	
	1 to: num do: [ :i | 
		((num \\ i) = 0) ifTrue: [ resultado add: i ] ].
	
^resultado asArray
]

{ #category : #testing }
Enteros class >> esAmigo: n con: b [  
	"Metodo para verificar si dos numeros son amigos"	
			
	| num1 num2 suma1 suma2 |
	num1:= n. num2:= b.
	suma1:= 0. suma2:= 0.
	self verificar: num1.
	self verificar: num2.
	
	1 to: num1 - 1 do: [ :i |
		((num1 \\ i) = 0 ) ifTrue: [ suma1:= suma1 + i asInteger ] ].
	1 to: num2 - 1 do: [ :x |
		((num2 \\ x) = 0) ifTrue: [ suma2:= suma2 + x asInteger ] ].
	
	^((num1 = suma2) and: [ num2 = suma1 ]) ifTrue: [ 'Los numeros son amigos' ] ifFalse: [ 'Los numeros no son amigos' ]
	
]

{ #category : #testing }
Enteros class >> esAutomorfico: n [
	"Su cuadrado termina con el mismo número."
			
	| cuadrado cuadradoStr num |
	
	num:= n asString.
	cuadrado:= n * n.
	cuadradoStr:= cuadrado asString.
	
^ (cuadradoStr endsWith: num) ifTrue: [ 'El numero es automorfico' ] ifFalse: [ 'El numero no es automorfico' ]
]

{ #category : #testing }
Enteros class >> esPar: n [
	"Metodo para verificar si un numero es par"
	self verificar: n.
	^((n \\ 2) = 0) ifTrue: [ 'El numero es par' ] ifFalse: [ 'El numero es impar' ] 
	
]

{ #category : #testing }
Enteros class >> esPerfecto: n [
	"Metodo para verificar si un numero es perfecto"

	| num suma |
	num:= n.
	suma:= 0.
	self verificar: num.
	
	1 to: num - 1 do: [ :i |
		((n \\ i) = 0 ) ifTrue: [ suma:= suma + i asInteger ] ].
	
^ num = suma ifTrue: [ 'El numero es perfecto' ] ifFalse: [ 'El numero no es perfecto' ]

]

{ #category : #testing }
Enteros class >> esPrimo: n [
	"Metodo para verificar que un numero es primo"

	| num bandera |
	num:= n.
	self verificar: num. 
	bandera:= true.
	num < 2 ifTrue: [ bandera:= false ].
	2 to: (num sqrtFloor) do: [ :i |
		((num \\ i) = 0) ifTrue: [ bandera:= false ] ].
	
	^bandera ifTrue: [ 'El numero es primo' ] ifFalse: [ 'El numero no es primo' ]
]

{ #category : #arithmetic }
Enteros class >> fact: n [
	"Metodo para calcular el factorial de un numero"
	
	| num resultado |
	
	resultado:= 1.
	num:= n.
	self verificar: num.
	
	num to: 1 by: -1 do: [ :i |
		resultado:= resultado * i ].
	
^resultado
]

{ #category : #testing }
Enteros class >> verificar: n [
	"Metodo para verificar si un numero es entero positivo"
	
	(n isInteger and: [ n >= 0 ]) ifFalse: [ self error: 'El numero debe ser positivo o cero' ]
]
