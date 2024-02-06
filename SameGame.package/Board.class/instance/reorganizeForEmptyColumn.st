reorganize
reorganizeForEmptyColumn

	| cpt |
	cpt := 0.
	1 to: self grid width do: [ :i |
		(self isColumnEmpty: i - cpt) ifTrue: [
			i - cpt to: self grid width - 1 - cpt do: [ :j |
			self switchColumn: j withColumn: j + 1 ].
			cpt := cpt + 1 ] ]