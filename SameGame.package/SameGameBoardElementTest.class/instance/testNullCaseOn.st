tests
testNullCaseOn

	| firstBoard game graphicBoard |
	"| B G |   =>       | N G |
 | G R |            | G R |       "
	game := SGGame new.
	firstBoard := SGBoard new game: game.
	firstBoard := firstBoard configureGrid:
		              ((CTNewArray2D width: 2 height: 2)
			               at: 1 @ 1 put: (SGBlueState new
					             );
			               at: 1 @ 2 put: (SGGreenState new
				                );
			               at: 2 @ 1 put: (SGGreenState new
				              );
			               at: 2 @ 2 put: (SGRedState new
				                );
			               yourself).
	graphicBoard := SGBoardElement new.
	graphicBoard grid: firstBoard grid.
	graphicBoard sameGameBoard: firstBoard.

	firstBoard drawer: graphicBoard.

	firstBoard nullBoxOnx: 1 y: 1.

	self assert: (firstBoard grid at: 1 @ 1) literal equals: 'N'.
	self assert: (firstBoard grid at: 1 @ 2) literal equals: 'G'.
	self assert: (firstBoard grid at: 2 @ 1) literal equals: 'G'.
	self assert: (firstBoard grid at: 2 @ 2) literal equals: 'R'