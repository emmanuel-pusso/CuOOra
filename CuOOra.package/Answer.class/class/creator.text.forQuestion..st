instance creation
creator: anUser text: aText forQuestion: aQuestion
	^ (self initializeAnInteracionFromUser: anUser withAText: aText)
		initializeWithCreator: anUser forQuestion: aQuestion;
		yourself