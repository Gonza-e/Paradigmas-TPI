Class {
	#name : #Persona,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'edad',
		'altura'
	],
	#category : #Curso
}

{ #category : #accesing }
Persona >> altura [
	"creo un getter que es un metodo que devuelve el valor de la variable de instancia"
			
	^altura
]

{ #category : #accesing }
Persona >> altura: unaAltura [
	"creo un setter que es un metodo que asigna un valor a la variable de instancia"
			
	altura:= unaAltura
]

{ #category : #accesing }
Persona >> edad [
	"creo un getter que es un metodo que devuelve el valor de la variable de instancia"
			
	^edad
]

{ #category : #accesing }
Persona >> edad: unaEdad [
	"creo un setter que es un metodo que asigna un valor a la variable de instancia"
			
	edad:= unaEdad
]

{ #category : #accesing }
Persona >> nombre [
	"creo un getter que es un metodo que devuelve el valor de la variable de instancia"
			
	^nombre
]

{ #category : #accesing }
Persona >> nombre: unNombre [
	"creo un setter que es un metodo que asigna un valor a la variable de instancia"
			
	nombre:= unNombre
]
