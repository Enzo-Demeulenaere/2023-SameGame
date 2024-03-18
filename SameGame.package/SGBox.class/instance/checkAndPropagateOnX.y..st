clicking
checkAndPropagateOnX: x y: y

	| case |
	case := self board boxAt: x @ y.
	case state = self state ifTrue: [ case propagateClick ]