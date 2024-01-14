hit
hitRedCaseonx: x y: y

	x - 1 > 0 ifTrue: [ (self findCaseX: x - 1 y: y) hitRed ].
	x + 1 <= grid width ifTrue: [ (self findCaseX: x + 1 y: y) hitRed ].
	y - 1 > 0 ifTrue: [ (self findCaseX: x y: y - 1) hitRed ].
	y + 1 <= grid height ifTrue: [ (self findCaseX: x y: y + 1) hitRed ]