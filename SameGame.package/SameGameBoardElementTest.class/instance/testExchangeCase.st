tests
testExchangeCase

	| board case1 case2 game graphicBoard |
	game := Game new.
	board := Board new game: game.
	board configureGrid: ((CTNewArray2D width: 3 height: 3)
			 at: 1 @ 1 put: NullCase new;
			 at: 2 @ 1 put: YellowCase new;
			 at: 3 @ 1 put: YellowCase new;
			 at: 1 @ 2 put: NullCase new;
			 at: 2 @ 2 put: RedCase new;
			 at: 3 @ 2 put: RedCase new;
			 at: 1 @ 3 put: NullCase new;
			 at: 2 @ 3 put: GreenCase new;
			 at: 3 @ 3 put: GreenCase new;
			 yourself).

	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.

	board drawer: graphicBoard.
	case1 := board caseAt: 1 @ 1.
	case2 := board caseAt: 2 @ 1.
	self assert: case1 literal equals: 'N'.
	self assert: case2 literal equals: 'Y'.

	board switchCase: 1 @ 1 with: 2 @ 1.

	case1 := board caseAt: 1 @ 1.
	case2 := board caseAt: 2 @ 1.

	self assert: case1 literal equals: 'Y'.
	self assert: case2 literal equals: 'N'