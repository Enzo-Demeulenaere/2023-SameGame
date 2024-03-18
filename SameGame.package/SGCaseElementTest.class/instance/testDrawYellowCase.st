tests
testDrawYellowCase

	| case |
	self skip.
	case := SGBoxElement new.
	case drawYellowCase.

	self
		assert: case background paint color rgbTriplet
		equals: #( 1.0 1.0 0.8 )