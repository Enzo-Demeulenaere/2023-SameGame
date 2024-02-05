accessing
grid: aSameGameBoardGrid

	grid := CTNewArray2D
		        width: aSameGameBoardGrid width
		        height: aSameGameBoardGrid height.

	self setGridLayout: aSameGameBoardGrid width.

	1 to: aSameGameBoardGrid width do: [ :col |
		1 to: aSameGameBoardGrid height do: [ :row |
			| sgCaseElement |
			sgCaseElement := SGCaseElement new.
			"don't ask tell once again"
			sgCaseElement background: (aSameGameBoardGrid at: row @ col) backgroundRepresentation.
			sgCaseElement gridPosition: row @ col.
			sgCaseElement board: self.
			grid at: row @ col put: sgCaseElement.
			self addChild: sgCaseElement ] ]