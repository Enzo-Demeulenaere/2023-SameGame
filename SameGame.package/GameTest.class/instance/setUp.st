running
setUp

	super setUp.
	board := Board new.
	board configureGrid: ((CTNewArray2D width: 5 height: 4)
			 at: 1 @ 1 put: (BlueCase new grid: board);
			 at: 2 @ 1 put: (YellowCase new grid: board);
			 at: 3 @ 1 put: (RedCase new grid: board);
			 at: 4 @ 1 put: (YellowCase new grid: board);
			 at: 5 @ 1 put: (RedCase new grid: board);
			 at: 1 @ 2 put: (GreenCase new grid: board);
			 at: 2 @ 2 put: (GreenCase new grid: board);
			 at: 3 @ 2 put: (RedCase new grid: board);
			 at: 4 @ 2 put: (GreenCase new grid: board);
			 at: 5 @ 2 put: (RedCase new grid: board);
			 at: 1 @ 3 put: (GreenCase new grid: board);
			 at: 2 @ 3 put: (RedCase new grid: board);
			 at: 3 @ 3 put: (RedCase new grid: board);
			 at: 4 @ 3 put: (RedCase new grid: board);
			 at: 5 @ 3 put: (BlueCase new grid: board);
			 at: 1 @ 4 put: (RedCase new grid: board);
			 at: 2 @ 4 put: (RedCase new grid: board);
			 at: 3 @ 4 put: (RedCase new grid: board);
			 at: 4 @ 4 put: (BlueCase new grid: board);
			 at: 5 @ 4 put: (BlueCase new grid: board);
			 yourself).
	^ board