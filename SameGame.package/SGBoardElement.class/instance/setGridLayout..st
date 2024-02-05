initialization
setGridLayout: width

	self layout: (BlGridLayout horizontal
			 columnCount: width;
			 cellSpacing: 5).
	self background: Color veryLightGray. 
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal matchParent.
		aLayoutConstraints vertical matchParent ].
	self padding: (BlInsets all: 5)