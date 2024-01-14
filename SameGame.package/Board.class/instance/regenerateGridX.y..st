reorganize
regenerateGridX: x y: y

	| array2D |
	array2D := CTNewArray2D width: x height: y.
	1 to: x do: [ :col |
		1 to: y do: [ :row |
			| number |
			number := Random new nextInteger: 4.
			number = 1 ifTrue: [
				array2D at: row @ col put: (BlueCase new
						 grid: self;
						 position: row @ col) ].
			number = 2 ifTrue: [
				array2D at: row @ col put: (RedCase new
						 grid: self;
						 position: row @ col) ].
			number = 3 ifTrue: [
				array2D at: row @ col put: (GreenCase new
						 grid: self;
						 position: row @ col) ].
			number = 4 ifTrue: [
				array2D at: row @ col put: (YellowCase new
						 grid: self;
						 position: row @ col) ] ] ].
	self configureGrid: array2D