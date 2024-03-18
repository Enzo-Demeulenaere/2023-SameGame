random subclass instance creation
randomBox

	| states |
	states := {
		          SGBlueState.
		          SGRedState.
		          SGGreenState.
		          SGYellowState }.
	^ SGBox withState: states atRandom uniqueInstance 