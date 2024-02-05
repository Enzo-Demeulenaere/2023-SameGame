reorganize
reorganizeForEmptyColonne

	1 to: self grid width do: [ :i |
		(self colonneEmptyOnX: i) ifTrue: [
			i + 1 to: self grid width do: [ :j |
				(self findCaseX: j y: 1) isNullCase ifFalse: [
					self exchangeCollone1: i colonne2: j ] ] ] ]
	