compute
exchangeCollone1: x colonne2: xplus1

	1 to: self grid height do: [ :i |
	self exchangeCase: x @ i at: xplus1 @ i ]
