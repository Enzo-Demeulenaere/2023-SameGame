accessing
grid: aSameGameBoardGrid

	grid := CTNewArray2D
		        width: aSameGameBoardGrid width
		        height: aSameGameBoardGrid height
		        tabulate: [ :col :row |
			        | elt |
			        elt := SGCaseElement new background:
				        (aSameGameBoardGrid at: col @ row)
					        backgroundRepresentation;
			        gridPosition: col @ row;
			        board: self.
			        self addChild: elt.
			        elt ].

	self setGridLayout: aSameGameBoardGrid width