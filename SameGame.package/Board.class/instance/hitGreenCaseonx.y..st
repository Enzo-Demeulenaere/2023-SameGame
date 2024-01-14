hit
hitGreenCaseonx: x y: y

	x - 1 > 0 ifTrue: [ (self findCaseX: x - 1 y: y) hitGreen ].
	x + 1 <= grid width ifTrue: [ (self findCaseX: x + 1 y: y) hitGreen ].
	y - 1 > 0 ifTrue: [ (self findCaseX: x y: y - 1) hitGreen ].
	y + 1 <= grid height ifTrue: [ (self findCaseX: x y: y + 1) hitGreen ]