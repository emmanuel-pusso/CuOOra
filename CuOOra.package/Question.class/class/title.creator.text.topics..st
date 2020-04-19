instance creation
title: aTitle creator: anUser text: aText topics: colTopics
	^ (self initializeAnInteracionFromUser: anUser withAText: aText)
		initializeWithCreator: anUser title: aTitle topics: colTopics;
		yourself