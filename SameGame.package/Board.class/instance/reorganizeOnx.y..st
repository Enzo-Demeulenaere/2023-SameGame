reorganize
reorganizeOnx: x y: y

	| cpt |
	y = self grid height ifTrue: [ ^ self ].
	cpt := y + 1.
	(self findCaseX: x y: y) isNullCase
		ifTrue: [
			[
			(self findCaseX: x y: cpt) isNullCase and: cpt < self grid height ]
				whileTrue: [ cpt := cpt + 1 ] ]
		ifFalse: [
		y < self grid height ifTrue: [ ^ self reorganizeOnx: x y: y + 1 ] ].

	self grid height + 1 = cpt ifTrue: [ ^ self ].

	self exchangeCase: x @ y at: x @ cpt.

	cpt = self grid height ifTrue: [ ^ self ].
	y < self grid height ifTrue: [ ^ self reorganizeOnx: x y: y + 1 ]