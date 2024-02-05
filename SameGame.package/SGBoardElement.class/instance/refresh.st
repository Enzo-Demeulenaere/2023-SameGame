accessing
refresh
	"i don't like this way of doing it"

	self hasChildren ifTrue: [ self removeChildren ].
	self grid do: [ :aCase | self addChild: aCase ]