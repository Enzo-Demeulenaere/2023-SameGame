clicking
checkAndPropagateOnX: x y: y

	| case |
	case := self board caseAt: x @ y.
	case class = self class ifTrue: [ case propagateClick ]