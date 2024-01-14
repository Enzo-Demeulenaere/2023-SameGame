tests
testClickAndOneColumnDisappear

	| board game graphicBoard |
	"Y: Yellow , B: Blue , G: Green , R: Red
	represents this grid:
	 | R | Y | r | 
	 | B | y | b | 
	 | G | y | g | 
	"
	game := Game new.
	board := Board new game: game.
	board configureGrid: ((CTNewArray2D width: 3 height: 3)
			 at: 1 @ 1 put: (RedCase new
					  grid: board;
					  position: 1 @ 1);
			 at: 2 @ 1 put: (YellowCase new
				  grid: board;
				  position: 2 @ 1);
			 at: 3 @ 1 put: (RedCase new
				  grid: board;
				  position: 3 @ 1);
			 at: 1 @ 2 put: (BlueCase new
				  grid: board;
				  position: 1 @ 2);
			 at: 2 @ 2 put: (YellowCase new
				  grid: board;
				  position: 2 @ 2);
			 at: 3 @ 2 put: (BlueCase new
				  grid: board;
				  position: 3 @ 2);
			 at: 1 @ 3 put: (GreenCase new
				  grid: board;
				  position: 1 @ 3);
			 at: 2 @ 3 put: (YellowCase new
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

	board hitCaseOnx: 2 y: 2.

	self assert: (board grid at: 3 @ 1) literal equals: 'N'.
	self assert: (board grid at: 3 @ 2) literal equals: 'N'.
	self assert: (board grid at: 3 @ 3) literal equals: 'N'.

	self assert: (board grid at: 2 @ 1) literal equals: 'R'.
	self assert: (board grid at: 2 @ 2) literal equals: 'B'.
	self assert: (board grid at: 2 @ 3) literal equals: 'G'