reorganize
reorganizeColumn: x


	"maybe better way for these loops"
	| col newCol cpt |
	col := self grid atColumn: x.
	newCol := OrderedCollection new.
	1 to: col size do: [ :i | newCol add: (NullCase new position: x @ i) ].
	cpt := 1.
	1 to: col size do: [ :i |
		(col at: i) isNullCase ifFalse: [
			| case |
			case := col at: i.
			case position: x @ cpt.
			newCol at: cpt put: case.
			cpt := cpt + 1 ] ].
	self grid atColumn: x put: newCol