reorganize
generateGridWidth: width height: height

	| array2D |
	array2D := CTNewArray2D
		           width: width
		           height: height
		           tabulate: [ :col :row | self randomCase ].
	self configureGrid: array2D