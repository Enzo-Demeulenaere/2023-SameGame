reorganize
reorganizeForEmptyColonne

	| cpt sndCpt |
	cpt := 1.
	[ cpt <= self grid width ] whileTrue: [
		(self colonneEmptyOnX: cpt) ifTrue: [
			sndCpt := cpt + 1.
			[ sndCpt <= self grid width ] whileTrue: [
				(self findCaseX: sndCpt y: 1) isNullCase ifFalse: [
					self exchangeCollone1: cpt colonne2: sndCpt.
					sndCpt := self grid width + 1 "hors de la boucle while" ].
				sndCpt := sndCpt + 1 ] ].
		cpt := cpt + 1 ]