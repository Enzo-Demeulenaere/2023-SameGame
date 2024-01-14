tests
testDrawBlueCase

	| case |
	case := SGCaseElement new.
	case drawBlueCase.

	self
		assert: case background paint color rgbTriplet
		equals: #( 0.8 1.0 1.0 )