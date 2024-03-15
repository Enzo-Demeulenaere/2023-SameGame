running
boardForTest
	"Y: Yellow , B: Blue , G: Green , R: Red
	represents this grid:
	 | B | Y | R | Y | R |
	 | G | G | R | G | R |
	 | G | R | R | R | B |
	 | R | R | R | B | B |
	"

	board := SGBoard new.
	board configureGrid: ((CTNewArray2D width: 5 height: 4)
			 at: 1 @ 1 put: (SGBlueState new grid: board);
			 at: 2 @ 1 put: (SGYellowState new grid: board);
			 at: 3 @ 1 put: (SGRedState new grid: board);
			 at: 4 @ 1 put: (SGYellowState new grid: board);
			 at: 5 @ 1 put: (SGRedState new grid: board);
			 at: 1 @ 2 put: (SGGreenState new grid: board);
			 at: 2 @ 2 put: (SGGreenState new grid: board);
			 at: 3 @ 2 put: (SGRedState new grid: board);
			 at: 4 @ 2 put: (SGGreenState new grid: board);
			 at: 5 @ 2 put: (SGRedState new grid: board);
			 at: 1 @ 3 put: (SGGreenState new grid: board);
			 at: 2 @ 3 put: (SGRedState new grid: board);
			 at: 3 @ 3 put: (SGRedState new grid: board);
			 at: 4 @ 3 put: (SGRedState new grid: board);
			 at: 5 @ 3 put: (SGBlueState new grid: board);
			 at: 1 @ 4 put: (SGRedState new grid: board);
			 at: 2 @ 4 put: (SGRedState new grid: board);
			 at: 3 @ 4 put: (SGRedState new grid: board);
			 at: 4 @ 4 put: (SGBlueState new grid: board);
			 at: 5 @ 4 put: (SGBlueState new grid: board);
			 yourself).
	^ board