tests
testDrawNullCase

	| case |
	self skip.
	case := SGCaseElement new.
	case drawNullCase.

	self
		assert: case background paint color rgbTriplet
		equals: #( 0.62 0.62 0.62 )