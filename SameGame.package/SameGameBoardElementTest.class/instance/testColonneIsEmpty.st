tests
testColonneIsEmpty

	| board game graphicBoard | 
	game := SGGame new.
	board := SGBoard new game: game.
	board configureGrid: ((CTNewArray2D width: 3 height: 3)
			 at: 1 @ 1 put: SGNullState new;
			 at: 2 @ 1 put: SGYellowState new;
			 at: 3 @ 1 put: SGYellowState new;
			 at: 1 @ 2 put: SGNullState new;
			 at: 2 @ 2 put: SGRedState new;
			 at: 3 @ 2 put: SGRedState new;
			 at: 1 @ 3 put: SGNullState new;
			 at: 2 @ 3 put: SGGreenState new;
			 at: 3 @ 3 put: SGGreenState new;
			 yourself).
	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.

	board drawer: graphicBoard.
	self assert: (board isColumnEmpty: 1).
	self deny: (board isColumnEmpty: 2)