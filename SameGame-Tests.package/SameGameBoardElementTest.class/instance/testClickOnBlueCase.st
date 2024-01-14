tests
testClickOnBlueCase

	| board resGrid game graphicBoard resgraphicBoard |
	"| B B  |			   | G R |
 | G R  |     =>  | N N |"
	game := Game new.
	board := Board new game: game.
	board configureGrid: ((CTNewArray2D width: 2 height: 2)
			 at: 1 @ 1 put: (BlueCase new
					  grid: board;
					  position: 1 @ 1);
			 at: 2 @ 1 put: (BlueCase new
				  grid: board;
				  position: 2 @ 1);
			 at: 1 @ 2 put: (GreenCase new
				  grid: board;
				  position: 1 @ 2);
			 at: 2 @ 2 put: (RedCase new
				  grid: board;
				  position: 2 @ 2);
			 yourself).

	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.
	board drawer: graphicBoard.

	resGrid := Board new.
	resGrid configureGrid: ((CTNewArray2D width: 2 height: 2)
			 at: 1 @ 1 put: (GreenCase new
					  grid: board;
					  position: 1 @ 1);
			 at: 2 @ 1 put: (RedCase new
				  grid: board;
				  position: 2 @ 1);
			 at: 1 @ 2 put: (NullCase new
				  grid: board;
				  position: 1 @ 2);
			 at: 2 @ 2 put: (NullCase new
				  grid: board;
				  position: 2 @ 2);
			 yourself).

	resgraphicBoard := SGBoardElement new.
	resgraphicBoard grid: resGrid grid.
	resgraphicBoard sameGameBoard: board.
	resGrid drawer: resgraphicBoard.
	board hitCaseOnx: 1 y: 1.

	self assert: board grid size equals: resGrid grid size.
	self
		assert: (board grid at: 1 @ 1) class
		equals: (resGrid grid at: 1 @ 1) class.
	self
		assert: (board grid at: 2 @ 1) class
		equals: (resGrid grid at: 2 @ 1) class