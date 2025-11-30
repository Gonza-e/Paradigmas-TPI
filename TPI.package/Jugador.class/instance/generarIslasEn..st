preparacion
generarIslasEn: arg1
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 |
	tmp1 := 0.
	tmp2 := 11.
	tmp3 := 11.
	[ tmp1 < 3 ]
		whileTrue: [ tmp4 := (1 to: tmp2) atRandom.
			tmp5 := (1 to: tmp3) atRandom.
			tmp6 := {(arg1 at: tmp4 at: tmp5).
			(arg1 at: tmp4 + 1 at: tmp5).
			(arg1 at: tmp4 at: tmp5 + 1).
			(arg1 at: tmp4 + 1 at: tmp5 + 1)}.
			(tmp6 anySatisfy: [ :arg2 | arg2 esIsla or: [ arg2 esMina ] ])
				ifFalse: [ tmp6
						do: [ :arg3 | 
							arg3
								esIsla: true;
								color: Color yellow ].
					tmp1 := tmp1 + 1 ] ]