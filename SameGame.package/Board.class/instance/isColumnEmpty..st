accessing
isColumnEmpty: x

	1 to: self grid height do: [ :i |
	(self caseAt: x @ i) isNullCase ifFalse: [ ^ false ] ].
	^ true