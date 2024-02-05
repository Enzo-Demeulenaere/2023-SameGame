accessing
refresh

	self hasChildren ifTrue: [ self removeChildren ].
	grid do: [ :aCase | self addChild: aCase ]