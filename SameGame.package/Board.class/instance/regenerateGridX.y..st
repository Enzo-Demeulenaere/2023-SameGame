reorganize
regenerateGridX: x y: y

	| array2D |
	array2D := CTNewArray2D width: x height: y. "can use widht:height:tabulate:"
	1 to: x do: [ :col |
		1 to: y do: [ :row |
			| number |
			"random generation could be done other way"
			number := Random new nextInteger: 4.
			"could use configureGrid: instead of grid: and position:"
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
						"these can be done using configureGrid: like below"
						 grid: self;
						 position: row @ col) ] ] ].
	"why use configureGrid: if they still call grid: and position: before that"
	self configureGrid: array2D