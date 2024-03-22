baselines
baseline: spec
	<baseline>

	spec
		baseline: 'Myg'
		with: [ spec repository: 'github://Ducasse/Myg:v1.0.2/src' ].

	spec
		package: 'SameGame' 
		with: [ spec requires: #( 'Myg' ) ];
		yourself
