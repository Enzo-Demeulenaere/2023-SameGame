tests
testClickAndOneColumnDisappear

	| board game graphicBoard |
	"Y: Yellow , B: Blue , G: Green , R: Red
	represents this grid:
	 | R | Y | r | 
	 | B | y | b | 
	 | G | y | g | 
	"
	game := SGGame new.
	board := SGBoard new game: game.
	board configureGrid: ((CTNewArray2D width: 3 height: 3)
			 at: 1 @ 1 put: (SGRedState new
					 );
			 at: 2 @ 1 put: (SGYellowState new
				  );
			 at: 3 @ 1 put: (SGRedState new
				 );
			 at: 1 @ 2 put: (SGBlueState new
				  );
			 at: 2 @ 2 put: (SGYellowState new
				  );
			 at: 3 @ 2 put: (SGBlueState new
				  );
			 at: 1 @ 3 put: (SGGreenState new
				  );
			 at: 2 @ 3 put: (SGYellowState new
				  );
			 at: 3 @ 3 put: (SGGreenState new
				  );
			 yourself).

	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.

	board drawer: graphicBoard.

	board hitBoxOnx: 2 y: 2.

	self assert: (board grid at: 3 @ 1) literal equals: 'N'.
	self assert: (board grid at: 3 @ 2) literal equals: 'N'.
	self assert: (board grid at: 3 @ 3) literal equals: 'N'.

	self assert: (board grid at: 2 @ 1) literal equals: 'R'.
	self assert: (board grid at: 2 @ 2) literal equals: 'B'.
	self assert: (board grid at: 2 @ 3) literal equals: 'G'