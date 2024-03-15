reorganize
reorganizeColumn: x

	| col newCol |
	col := self grid atColumn: x.
	newCol := col reject: [ :each | each hasNullState ].
	1 to: newCol size do: [ :i | (col at: i) state: (newCol at: i) state ].
	newCol size + 1 to: col size do: [ :j |
	(col at: j) state: SGNullState uniqueInstance ]