reorganize
regenerateGridX: x y: y

	| array2D |
	array2D := CTNewArray2D
		           width: x
		           height: y
		           tabulate: [ :col :row | self randomCase ].
	self configureGrid: array2D