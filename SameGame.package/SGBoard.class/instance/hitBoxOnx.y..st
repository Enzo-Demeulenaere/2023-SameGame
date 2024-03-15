hit
hitBoxOnx: x y: y

	(self grid at: x @ y) hasNullState ifTrue: [ ^ self ].
	(self grid at: x @ y) propagateClick.
	self hitList size > 1 ifTrue: [
		self hitList do: [ :each | each state: SGNullState uniqueInstance  ] ].

	self game addPoints: self calculePoint.

	self hitList do: [ :each | self reorganizeColumn: each x ].

	self hitList removeAll.

	self reorganizeForEmptyColumn