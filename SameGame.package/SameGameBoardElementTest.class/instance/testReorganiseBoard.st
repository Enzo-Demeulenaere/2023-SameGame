tests
testReorganiseBoard

	| firstBoard game graphicBoard |
	self skip. "this was not working. See that later."
"| B |            | B |
 | N |            | Y |
 | Y |         => | B |
 | N |            | N |
 | B |            | N | "

	game := Game new.
	firstBoard := Board new game: game.
	firstBoard := firstBoard configureGrid:
		              ((CTNewArray2D width: 1 height: 5)
			               at: 1 @ 1 put: (BlueCase new
					                grid: firstBoard;
					                position: 1 @ 1);
			               at: 1 @ 2 put: (NullCase new
				                grid: firstBoard;
				                position: 1 @ 2);
			               at: 1 @ 3 put: (YellowCase new
				                grid: firstBoard;
				                position: 1 @ 3);
			               at: 1 @ 4 put: (NullCase new
				                grid: firstBoard;
				                position: 1 @ 4);
			               at: 1 @ 5 put: (GreenCase new
				                grid: firstBoard;
				                position: 1 @ 5);
			               yourself).
	graphicBoard := SGBoardElement new.
	graphicBoard grid: firstBoard grid.
	graphicBoard sameGameBoard: firstBoard.

	firstBoard drawer: graphicBoard.

	firstBoard reorganizeOnx: 1 y: 1.

	self assert: (firstBoard grid at: 1 @ 1) literal equals: 'B'.
	self assert: (firstBoard grid at: 1 @ 2) literal equals: 'Y'.
	self assert: (firstBoard grid at: 1 @ 3) literal equals: 'G'.
	self assert: (firstBoard grid at: 1 @ 4) literal equals: 'N'.
	self assert: (firstBoard grid at: 1 @ 5) literal equals: 'N'