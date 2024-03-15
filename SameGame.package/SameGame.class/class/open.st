instance creation
open

	<script>
	| board graphicBoard space |
	board := SGBoard new game: SGGame new.
	board generateGridWidth: 20 height: 20.
	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.

	space := BlSpace new.
	space title: 'SameGame'.
	space root addChild: graphicBoard.
	space extent: 1000 @ 1000.

	space show