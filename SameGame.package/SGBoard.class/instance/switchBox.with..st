compute
switchBox: aPoint1 with: aPoint2

	| box1 box2 tmpState |
	box1 := self boxAt: aPoint1.
	box2 := self boxAt: aPoint2.
	box1 state = box2 state ifTrue: [ ^ self ].
	"This will avoid calling announcements later"
	tmpState := box1 state.
	box1 state: box2 state.
	box2 state: tmpState 