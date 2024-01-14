baselines
baseline: spec
	<baseline>

	spec
		baseline: 'Myg'
		with: [ spec repository: 'github://Ducasse/Myg:v1.0.1/src' ].

	spec
		package: 'SameGame' 
		with: [ spec requires: #( 'Myg' ) ];
		package: 'SameGame-Tests'
		with: [ spec requires: #( 'SameGame' ) ];
		package: 'SameGame-Graphic' 
		with: [ spec requires: #( 'SameGame' ) ];
		package: 'SameGame-Graphic-Tests'
		with: [ spec requires: #( 'SameGame-Graphic' ) ];
		yourself