running
setUp

	super setUp.
	board := SGBoard new.
	board configureGrid: ((CTNewArray2D width: 5 height: 4)
			 at: 1 @ 1 put: (SGBlueState new);
			 at: 2 @ 1 put: (SGYellowState new);
			 at: 3 @ 1 put: (SGRedState new);
			 at: 4 @ 1 put: (SGYellowState new);
			 at: 5 @ 1 put: (SGRedState new);
			 at: 1 @ 2 put: (SGGreenState new );
			 at: 2 @ 2 put: (SGGreenState new );
			 at: 3 @ 2 put: (SGRedState new );
			 at: 4 @ 2 put: (SGGreenState new );
			 at: 5 @ 2 put: (SGRedState new );
			 at: 1 @ 3 put: (SGGreenState new );
			 at: 2 @ 3 put: (SGRedState new );
			 at: 3 @ 3 put: (SGRedState new );
			 at: 4 @ 3 put: (SGRedState new );
			 at: 5 @ 3 put: (SGBlueState new );
			 at: 1 @ 4 put: (SGRedState new );
			 at: 2 @ 4 put: (SGRedState new );
			 at: 3 @ 4 put: (SGRedState new );
			 at: 4 @ 4 put: (SGBlueState new );
			 at: 5 @ 4 put: (SGBlueState new );
			 yourself).
	^ board