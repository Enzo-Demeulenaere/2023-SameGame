reorganize
reorganizeForEmptyColumn
	"doesn't work exactly"
	"writing a test can show the error"

	1 to: self grid width do: [ :i |
		(self isColumnEmpty: i) ifTrue: [
			i + 1 to: self grid width do: [ :j |
				(self caseAt: j @ 1) isNullCase ifFalse: [
					self switchColumn: i withColumn: j ] ] ] ]