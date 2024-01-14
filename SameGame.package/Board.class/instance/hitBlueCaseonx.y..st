hit
hitBlueCaseonx: x y: y

	x - 1 > 0 ifTrue: [ (self findCaseX: x - 1 y: y) hitBlue ].
	x + 1 <= grid width ifTrue: [ (self findCaseX: x + 1 y: y) hitBlue ].
	y - 1 > 0 ifTrue: [ (self findCaseX: x y: y - 1) hitBlue ].
	y + 1 <= grid height ifTrue: [ (self findCaseX: x y: y + 1) hitBlue ]