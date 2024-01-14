compute
exchangeCollone1: x colonne2: xplus1

	| cpt |
	cpt := 1.
	[ cpt <= self grid height ] whileTrue: [
		self exchangeCase: x @ cpt at: xplus1 @ cpt.
		cpt := cpt + 1 ]