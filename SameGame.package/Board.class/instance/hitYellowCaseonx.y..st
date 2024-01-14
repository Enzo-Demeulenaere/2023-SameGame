hit
hitYellowCaseonx: x y: y

	x - 1 > 0 ifTrue: [ (self findCaseX: x - 1 y: y) hitYellow ].
	x + 1 <= grid width ifTrue: [ (self findCaseX: x + 1 y: y) hitYellow ].
	y - 1 > 0 ifTrue: [ (self findCaseX: x y: y - 1) hitYellow ].
	y + 1 <= grid height ifTrue: [
		(self findCaseX: x y: y + 1) hitYellow ]