accessing
colonneEmptyOnX: x

	| cpt |
	cpt := 1.
	[ cpt < self grid height ] whileTrue: [
		(self findCaseX: x y: cpt) isNullCase ifFalse: [ ^ false ].
		cpt := cpt + 1 ].
	^ true