hit
hitCaseOnx: x y: y

	(self grid at: x @ y) isNullCase ifTrue: [ ^ self ].
	(self grid at: x @ y) propagateClick.
	self hitList size > 1 ifTrue: [
		self hitList do: [ :each | self nullCaseOnx: each x y: each y ] ].

	self game addPoints: self calculePoint.

	self hitList removeAll.

	1 to: self grid width do: [ :i | self reorganizeOnx: i y: 1 ].

	self reorganizeForEmptyColonne.
	"draw again the whole grid"
	1 to: self grid width do: [ :col |
		1 to: self grid height do: [ :row |
		(self grid at: col @ row) draw: drawer ] ]