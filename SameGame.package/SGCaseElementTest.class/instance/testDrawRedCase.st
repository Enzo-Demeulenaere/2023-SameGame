tests
testDrawRedCase

	| case |
	case := SGCaseElement new.
	case drawRedCase.

	self
		assert: case background paint color rgbTriplet
		equals: #( 1.0 0.8 0.8 )