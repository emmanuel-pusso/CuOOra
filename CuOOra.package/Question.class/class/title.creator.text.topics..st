instance creation
title: aTitle creator: anUser text: aText topics: colTopics
	^ self new
		initializeWithCreator: anUser
			tilte: aTitle
			text: aText
			topics: colTopics;
		yourself