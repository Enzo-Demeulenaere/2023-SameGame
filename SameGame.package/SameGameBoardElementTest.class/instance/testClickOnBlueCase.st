tests
testClickOnBlueCase

	| board resGrid game graphicBoard resgraphicBoard |
	"| B B  |			   | G R | 
 | G R  |     =>  | N N |"
	game := SGGame new.
	board := SGBoard new game: game.
	board configureGrid: ((CTNewArray2D width: 2 height: 2)
			 at: 1 @ 1 put: SGBlueState new;
			 at: 2 @ 1 put: SGBlueState new;
			 at: 1 @ 2 put: SGGreenState new;
			 at: 2 @ 2 put: SGRedState new;
			 yourself).

	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.
	board drawer: graphicBoard.

	resGrid := SGBoard new.
	resGrid configureGrid: ((CTNewArray2D width: 2 height: 2)
			 at: 1 @ 1 put: SGGreenState new;
			 at: 2 @ 1 put: SGRedState new;
			 at: 1 @ 2 put: SGNullState new;
			 at: 2 @ 2 put: SGNullState new;
			 yourself).

	resgraphicBoard := SGBoardElement new.
	resgraphicBoard grid: resGrid grid.
	resgraphicBoard sameGameBoard: board.
	resGrid drawer: resgraphicBoard.
	board hitBoxOnx: 1 y: 1.

	self assert: board grid size equals: resGrid grid size.
	self
		assert: (board grid at: 1 @ 1) class
		equals: (resGrid grid at: 1 @ 1) class.
	self
		assert: (board grid at: 2 @ 1) class
		equals: (resGrid grid at: 2 @ 1) class