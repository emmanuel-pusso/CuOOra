comparing
= anInteraction
	^ (self getText = anInteraction getText
		and: [ self user = anInteraction user ])
		and: [ self creationTime = anInteraction creationTime ]