clicking
checkAndPropagateOnX: x y: y

	| case |
	case := self board findCaseX: x y: y.
	case class = self class ifTrue: [
		case propagateClick ]