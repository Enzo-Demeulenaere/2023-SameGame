accessing
isColumnEmpty: x

	1 to: self grid height do: [ :i |
	(self boxAt: x @ i) hasNullState ifFalse: [ ^ false ] ].
	^ true