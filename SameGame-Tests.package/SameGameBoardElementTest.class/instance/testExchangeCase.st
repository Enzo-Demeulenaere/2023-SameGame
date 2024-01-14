tests
testExchangeCase

	| board case1 case2 game graphicBoard |
	game := Game new.
	board := Board new game: game.
	board configureGrid: ((CTNewArray2D width: 3 height: 3)
			 at: 1 @ 1 put: (NullCase new
					  grid: board;
					  position: 1 @ 1);
			 at: 2 @ 1 put: (YellowCase new
				  grid: board;
				  position: 2 @ 1);
			 at: 3 @ 1 put: (YellowCase new
				  grid: board;
				  position: 3 @ 1);
			 at: 1 @ 2 put: (NullCase new
				  grid: board;
				  position: 1 @ 2);
			 at: 2 @ 2 put: (RedCase new
				  grid: board;
				  position: 2 @ 2);
			 at: 3 @ 2 put: (RedCase new
				  grid: board;
				  position: 3 @ 2);
			 at: 1 @ 3 put: (NullCase new
				  grid: board;
				  position: 1 @ 3);
			 at: 2 @ 3 put: (GreenCase new
				  grid: board;
				  position: 2 @ 3);
			 at: 3 @ 3 put: (GreenCase new
				  grid: board;
				  position: 3 @ 3);
			 yourself).

	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.

	board drawer: graphicBoard.
	case1 := board findCaseX: 1 y: 1.
	case2 := board findCaseX: 2 y: 1.
	self assert: case1 literal equals: 'N'.
	self assert: case2 literal equals: 'Y'.

	board exchangeCase: 1 @ 1 at: 2 @ 1.

	case1 := board findCaseX: 1 y: 1.
	case2 := board findCaseX: 2 y: 1.

	self assert: case1 literal equals: 'Y'.
	self assert: case2 literal equals: 'N'