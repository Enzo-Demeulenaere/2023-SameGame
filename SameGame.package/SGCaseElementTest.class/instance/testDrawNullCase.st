tests
testDrawNullCase

	| case |
	self skip.
	case := SGBoxElement new.
	case drawNullCase.

	self
		assert: case background paint color rgbTriplet
		equals: #( 0.62 0.62 0.62 )