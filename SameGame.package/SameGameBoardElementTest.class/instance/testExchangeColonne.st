tests
testExchangeColonne

	| board game graphicBoard |
	game := Game new.
	board := Board new game: game.
	board configureGrid: ((CTNewArray2D width: 3 height: 3)
			 at: 1 @ 1 put: (NullCase new
					  );
			 at: 2 @ 1 put: (YellowCase new
				 );
			 at: 3 @ 1 put: (YellowCase new
				);
			 at: 1 @ 2 put: (NullCase new
				  );
			 at: 2 @ 2 put: (RedCase new
				  );
			 at: 3 @ 2 put: (RedCase new
				 );
			 at: 1 @ 3 put: (NullCase new
				);
			 at: 2 @ 3 put: (GreenCase new
				);
			 at: 3 @ 3 put: (GreenCase new
				  );
			 yourself).

	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.

	board drawer: graphicBoard.

	board exchangeCollone1: 1 colonne2: 2.
	self assert: (board findCaseX: 1 y: 1) literal equals: 'Y'.
	self assert: (board findCaseX: 1 y: 2) literal equals: 'R'.
	self assert: (board findCaseX: 1 y: 3) literal equals: 'G'.

	self assert: (board findCaseX: 2 y: 1) literal equals: 'N'.
	self assert: (board findCaseX: 2 y: 2) literal equals: 'N'.
	self assert: (board findCaseX: 2 y: 3) literal equals: 'N'