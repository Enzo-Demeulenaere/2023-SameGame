tests
testColonneIsEmpty

	| board game graphicBoard | 
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
	self assert: (board colonneEmptyOnX: 1).
	self deny: (board colonneEmptyOnX: 2)