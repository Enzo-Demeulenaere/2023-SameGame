reorganize
regenerateGridX: x y: y

	| array2D |
	array2D := CTNewArray2D width: x height: y. "can use widht:height:tabulate:"
	1 to: x do: [ :col |
		1 to: y do: [ :row |
			| number |
			"random generation could be done other way"
			number := Random new nextInteger: 4.
			number = 1 ifTrue: [ array2D at: row @ col put: BlueCase new ].
			number = 2 ifTrue: [ array2D at: row @ col put: RedCase new ].
			number = 3 ifTrue: [ array2D at: row @ col put: GreenCase new ].
			number = 4 ifTrue: [ array2D at: row @ col put: YellowCase new ] ] ].
	"why use configureGrid: if they still call grid: and position: before that"
	self configureGrid: array2D