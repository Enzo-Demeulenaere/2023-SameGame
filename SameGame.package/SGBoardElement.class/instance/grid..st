accessing
grid: aSameGameBoardGrid

	grid := CTNewArray2D
		        width: aSameGameBoardGrid width
		        height: aSameGameBoardGrid height
		        tabulate: [ :col :row |
			        | elt box |
					  box := (aSameGameBoardGrid at: col @ row).
			        elt := (SGBoxElement createWithBox: box)
				               gridPosition: col @ row;
				               board: self.
			        self addChild: elt.
			        elt ].

	self setGridLayout: aSameGameBoardGrid width