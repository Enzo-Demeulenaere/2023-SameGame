tests
testExchangeColonne

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

	board switchColumn: 1 withColumn: 2.
	self assert: (board boxAt: 1 @ 1) literal equals: 'Y'.
	self assert: (board boxAt: 1 @ 2) literal equals: 'R'.
	self assert: (board boxAt: 1 @ 3) literal equals: 'G'.

	self assert: (board boxAt: 2 @ 1) literal equals: 'N'.
	self assert: (board boxAt: 2 @ 2) literal equals: 'N'.
	self assert: (board boxAt: 2 @ 3) literal equals: 'N'