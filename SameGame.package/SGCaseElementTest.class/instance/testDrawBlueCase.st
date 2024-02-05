tests
testDrawBlueCase

	| case |
	self skip.
	case := SGCaseElement new.
	case drawBlueCase.

	self
		assert: case background paint color
		equals: #( 0.8 1.0 1.0 )