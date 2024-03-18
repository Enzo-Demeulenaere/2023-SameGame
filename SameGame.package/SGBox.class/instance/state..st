accessing
state: aState
	"(aState class inheritsFrom: SGNullState) ifFalse: [ self halt ]."

	state = aState ifTrue: [ ^ self ].
	state := aState.
	self announcer announce: SGStateChangedAnnouncement new.