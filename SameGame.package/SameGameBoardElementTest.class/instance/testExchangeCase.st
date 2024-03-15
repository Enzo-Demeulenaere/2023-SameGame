tests
testExchangeCase

	| board case1 case2 game graphicBoard |
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
	case1 := board boxAt: 1 @ 1.
	case2 := board boxAt: 2 @ 1.
	self assert: case1 literal equals: 'N'.
	self assert: case2 literal equals: 'Y'.

	board switchBox: 1 @ 1 with: 2 @ 1.

	case1 := board boxAt: 1 @ 1.
	case2 := board boxAt: 2 @ 1.

	self assert: case1 literal equals: 'Y'.
	self assert: case2 literal equals: 'N'