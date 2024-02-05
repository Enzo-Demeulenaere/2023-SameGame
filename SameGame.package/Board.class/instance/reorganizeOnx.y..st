reorganize
reorganizeOnx: x y: y

	| cpt |
	y = self grid height ifTrue: [ ^ self ].
	cpt := y + 1.
	(self caseAt: x @ y) isNullCase
		ifTrue: [
			[
			(self caseAt: x @ cpt) isNullCase and: cpt < self grid height ]
				whileTrue: [ cpt := cpt + 1 ] ]
		ifFalse: [
		y < self grid height ifTrue: [ ^ self reorganizeOnx: x y: y + 1 ] ].

	self grid height + 1 = cpt ifTrue: [ ^ self ].

	self switchCase: x @ y with: x @ cpt.

	cpt = self grid height ifTrue: [ ^ self ].
	y < self grid height ifTrue: [ ^ self reorganizeOnx: x y: y + 1 ]