instance creation
open

	<script>
	| board graphicBoard space |
	board := Board new game: Game new.
	board generateGridWidth: 20 height: 20.
	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.

	board drawer: graphicBoard.

	space := BlSpace new.
	space title: 'SameGame'.
	space root addChild: graphicBoard.
	space extent: 1000 @ 1000.

	space show