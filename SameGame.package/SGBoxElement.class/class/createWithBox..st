accessing
createWithBox: aSGBox

	^ self new
		  box: aSGBox;
		  background: aSGBox backgroundRepresentation;
		yourself