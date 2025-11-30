preparacion
generarMinasEn: arg1
	| tmp1 tmp2 tmp3 tmp4 |
	tmp1 := 0.
	[ tmp1 < 3 ]
		whileTrue: [ tmp2 := (1 to: 12) atRandom.
			tmp3 := (1 to: 12) atRandom.
			tmp4 := arg1 at: tmp2 at: tmp3.
			(tmp4 esIsla or: [ tmp4 esMina ])
				ifFalse: [ tmp4
						esMina: true;
						color: Color red muchDarker.
					tmp1 := tmp1 + 1 ] ]