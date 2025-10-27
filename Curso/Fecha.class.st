Class {
	#name : #Fecha,
	#superclass : #Object,
	#instVars : [
		'dia',
		'mes',
		'año'
	],
	#category : #Curso
}

{ #category : #accessing }
Fecha >> año [
	"Getter de año"
	
	^año
]

{ #category : #accessing }
Fecha >> año: unAño [
	"Setter de año"
	
	año:= unAño
]

{ #category : #accessing }
Fecha >> dia [
	"Getter de dia"
	
	^dia
]

{ #category : #accessing }
Fecha >> dia: unDia [
	"Setter de dia"
	
	dia:= unDia
]

{ #category : #testing }
Fecha >> esBisiesto [
			
	
	^((self año \\ 4 = 0) or: [ (self año \\ 400 = 0) and: [ self año \\ 100 = 0 ] ])
	

]

{ #category : #initialization }
Fecha >> inicializarconDia: unDia mes: unMes año: unAño [
	"inicializar fecha"
	
	| rango meses |
	rango:= (1000 to: 3000).
	meses:= #(31 28 31 30 31 30 31 31 30 31 30 31).
	
	dia:= unDia.
	dia < 0 ifTrue: [ ^self error: 'Dia ingresado fuera de rango' ].
	
	mes:= unMes.
	((mes < 0) or: [ mes > 12 ]) ifTrue: [ ^self error: 'Mes ingresado fuera de rango' ].
	
	año:= unAño.
	(rango includes: año) ifFalse: [ ^self error: 'Año ingresado fuera de rango' ].
	
	(self esBisiesto and: [ mes = 2 ]) ifTrue: [ meses at: mes put: 29 ].
	dia <= (meses at: mes) ifFalse: [ ^self error: 'La cantidad de dias no corresponden al mes' ].
	
]

{ #category : #accessing }
Fecha >> mes [
	"Getter de mes"
	
	^mes
]

{ #category : #accessing }
Fecha >> mes: unMes [
	"Setter de mes"
	
	mes:= unMes
]

{ #category : #printing }
Fecha >> printOn: stream [ 
	"Fecha en formato dia/mes/año"
		
	dia < 10 ifTrue: [ stream nextPutAll: '0'; nextPutAll: dia asString ] ifFalse: [ stream nextPutAll: dia asString ].
	stream nextPutAll: '/'.
	mes < 10 ifTrue: [ stream nextPutAll: '0'; nextPutAll: mes asString ] ifFalse: [ stream nextPutAll: mes asString ].
	stream nextPutAll: '/'.
	stream nextPutAll: año asString.
	
]
