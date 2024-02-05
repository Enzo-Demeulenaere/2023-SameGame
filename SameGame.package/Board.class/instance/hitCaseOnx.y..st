hit
hitCaseOnx: x y: y

	hitList add: (self grid at: x @ y).
	(grid at: x @ y) hit.
	hitList size > 1 ifTrue: [ self nullCaseOnx: x y: y ].

	self game addPoints: self calculePoint.

	hitList removeAll.


	"cpt := 1.
	[ cpt <= self grid width ] whileTrue: [
		self reorganizeOnx: cpt y: 1.
		cpt := cpt + 1 ]."
	1 to: self grid width do: [ :i | self reorganizeOnx: i y: 1 ].

	self reorganizeForEmptyColonne.

	1 to: self grid width do: [ :col |
		1 to: self grid height do: [ :row |
		(self grid at: col @ row) draw: drawer ] ].
	self drawer refresh