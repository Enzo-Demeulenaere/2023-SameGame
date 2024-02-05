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
			(aSameGameBoardGrid at: row @ col) isNullCase ifTrue: [
				sgCaseElement drawNullCase ].
			(aSameGameBoardGrid at: row @ col) isYellowCase ifTrue: [
				sgCaseElement drawYellowCase ].
			(aSameGameBoardGrid at: row @ col) isGreenCase ifTrue: [
				sgCaseElement drawGreenCase ].
			(aSameGameBoardGrid at: row @ col) isRedCase ifTrue: [
				sgCaseElement drawRedCase ].
			(aSameGameBoardGrid at: row @ col) isBlueCase ifTrue: [
				sgCaseElement drawBlueCase ].
			sgCaseElement gridPosition: row @ col.
			sgCaseElement board: self.
			grid at: row @ col put: sgCaseElement.
			self addChild: sgCaseElement ] ]