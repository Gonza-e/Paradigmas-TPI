ataque
ataqueEn: arg1 usando: arg2
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 tmp8 tmp7 tmp9 tmp10 tmp11 tmp12 tmp14 tmp16 |
	tmp1 := arg1 jugador tablero.
	tmp2 := 12.  "CORREGIDO: Usamos 12 para el tamaño del tablero"
	tmp3 := OrderedCollection new.
	tmp6 := tmp2.
	tmp12 := tmp6.
	
	"Iterar sobre todas las filas (1 a 12)"
	1 to: tmp12 do: [ :tmp13 | 
		tmp7 := tmp2.
		tmp14 := tmp7.
		
		"Iterar sobre todas las columnas (1 a 12)"
		1 to: tmp14 do: [ :tmp15 | 
			tmp8 := nil.
			tmp8 := tmp1 at: tmp13 at: tmp15.
			
			"Solo agrega celdas que NO hayan sido golpeadas"
			tmp8 fueGolpeada not
				ifTrue: [ tmp3 add: tmp8 ] ] ].
				
	tmp4 := tmp3 size min: 2. "Seleccionar máximo 2 celdas"
	tmp5 := OrderedCollection new.
	tmp9 := tmp4.
	tmp16 := tmp9.
	
	"Seleccionar 2 celdas aleatorias de las no golpeadas"
	1 to: tmp16 do: [ :tmp17 | 
		tmp10 := nil.
		tmp11 := nil.
		tmp10 := (1 to: tmp3 size) atRandom.
		tmp11 := tmp3 at: tmp10.
		tmp5 add: tmp11.
		tmp3 removeAt: tmp10 ].
		
	arg2 manejarPintadoYReversion: tmp5