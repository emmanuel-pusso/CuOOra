initialize
initializeWithCreator:anUser text: aText forQuestion: aQuestion
	self initializeAnInteracionFromUser: anUser withAText: aText.
	question := aQuestion.
	question addAnswer: self.
	anUser addAnswer: self.