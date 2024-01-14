accessing
nullCaseOnx: x y: y

	(hitList includes: (self findCaseX: x y: y)) ifFalse: [
		hitList add: (self findCaseX: x y: y).
		(self findCaseX: x y: y) hit ].
	grid atColumn: x atRow: y put: (NullCase new position: x @ y)

	"hitList contains the cases that became Null after being hit"