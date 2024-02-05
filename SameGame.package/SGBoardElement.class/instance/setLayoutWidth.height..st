initialization
setLayoutWidth: width height: height

	self layout: (BlGridLayout horizontal cellSpacing: 5 - (width // 5)).
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal matchParent.
		aLayoutConstraints vertical matchParent ].
	self padding: (BlInsets all: 5).
	self layout columnCount: width