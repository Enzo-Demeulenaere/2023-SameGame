instance creation
open

	<script>
	| board game graphicBoard space |
	game := Game new.
	board := Board new game: game.
	board regenerateGridX: 20 y: 20.
	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.

	board drawer: graphicBoard.

	space := BlSpace new.
	space title: 'SameGame'.
	space root addChild: graphicBoard.
	space extent: 1000 @ 1000.

	space show