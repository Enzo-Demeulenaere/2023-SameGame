tests
testDrawYellowCase

	| case |
	self skip.
	case := SGCaseElement new.
	case drawYellowCase.

	self
		assert: case background paint color rgbTriplet
		equals: #( 1.0 1.0 0.8 )