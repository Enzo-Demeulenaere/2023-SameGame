tests
testGrid

	| game firstBoard graphicBoard |
	game := Game new.
	firstBoard := Board new game: game.
	firstBoard := firstBoard configureGrid:
		              ((CTNewArray2D width: 2 height: 2)
			               at: 1 @ 1 put: (BlueCase new
					               );
			               at: 1 @ 2 put: (GreenCase new
				               );
			               at: 2 @ 1 put: (NullCase new
				              );
			               at: 2 @ 2 put: (RedCase new
				               );
			               yourself).
	graphicBoard := SGBoardElement new.
	graphicBoard grid: firstBoard grid.

	self assert: graphicBoard grid width equals: 2.
	self assert: graphicBoard grid height equals: 2.
	self
		assert:
		(graphicBoard grid at: 1 @ 1) background paint color rgbTriplet
		equals: #( 0.8 1.0 1.0 ).
	self
		assert:
		(graphicBoard grid at: 1 @ 2) background paint color rgbTriplet
		equals: #( 0.8 1.0 0.6 ).
	self
		assert:
		(graphicBoard grid at: 2 @ 1) background paint color rgbTriplet
		equals: #( 0.62 0.62 0.62 ).
	self
		assert:
		(graphicBoard grid at: 2 @ 2) background paint color rgbTriplet
		equals: #( 1.0 0.8 0.8 ).

	firstBoard grid at: 1 @ 1 put: (YellowCase new
			 ).
	graphicBoard grid: firstBoard grid.

	self
		assert:
		(graphicBoard grid at: 1 @ 1) background paint color rgbTriplet
		equals: #( 1.0 1.0 0.8 )