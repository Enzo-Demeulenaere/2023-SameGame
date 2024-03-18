tests
testDrawBlueCase

	| case |
	self skip.
	case := SGBoxElement new.
	case drawBlueCase.

	self
		assert: case background paint color
		equals: #( 0.8 1.0 1.0 )