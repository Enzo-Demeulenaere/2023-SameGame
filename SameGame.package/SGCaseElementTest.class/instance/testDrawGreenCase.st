tests
testDrawGreenCase

	| case |
	self skip.
	case := SGCaseElement new.
	case drawGreenCase.

	self
		assert: case background paint color rgbTriplet
		equals: #( 0.8 1.0 0.6 )