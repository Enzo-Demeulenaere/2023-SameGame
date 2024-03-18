tests
testClickAndMultipleCaseDisappear

	| board game graphicBoard |
	"Y: Yellow , B: Blue , G: Green , R: Red
	represents this grid:
	 | B | Y | Y | 
	 | R | R | R | 
	 | B | G | G | 

	"
	game := SGGame new.
	board := SGBoard new game: game.
	board configureGrid: ((CTNewArray2D width: 3 height: 3)
			 at: 1 @ 1 put: (SGBlueState new
					  
					   );
			 at: 2 @ 1 put: (SGYellowState new
				  );
			 at: 3 @ 1 put: (SGYellowState new
				  );
			 at: 1 @ 2 put: (SGRedState new
				  );
			 at: 2 @ 2 put: (SGRedState new
				  );
			 at: 3 @ 2 put: (SGRedState new
				  );
			 at: 1 @ 3 put: (SGBlueState new
				 );
			 at: 2 @ 3 put: (SGGreenState new
				  );
			 at: 3 @ 3 put: (SGGreenState new
				  );
			 yourself).
	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.

	board drawer: graphicBoard.

	board hitBoxOnx: 1 y: 2.
	"fonctionne jusque ici"

	self assert: (board grid at: 1 @ 1) literal equals: 'B'