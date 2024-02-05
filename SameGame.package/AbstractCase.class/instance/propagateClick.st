clicking
propagateClick

	| x y |
	x := self x.
	y := self y.
	(self board hitList includes: self) ifTrue: [ ^ self ].
	self board hitList add: self.
	x - 1 > 0 ifTrue: [ self checkAndPropagateOnX: x - 1 y: y ].
	x + 1 <= self board grid width ifTrue: [
		self checkAndPropagateOnX: x + 1 y: y ].
	y - 1 > 0 ifTrue: [ self checkAndPropagateOnX: x y: y - 1 ].
	y + 1 <= self board grid height ifTrue: [
		self checkAndPropagateOnX: x y: y + 1 ]