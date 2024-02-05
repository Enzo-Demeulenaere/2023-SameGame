accessing
nullCaseOnx: x y: y

	self grid atColumn: x atRow: y put: (NullCase new position: x @ y)

	"hitList contains the cases that became Null after being hit"