instance creation
title: aTitle creator: anUser text: aText topic: aTopic
	^ self new
		initializeWithCreator: anUser
			tilte: aTitle
			text: aText
			topic: aTopic;
		yourself