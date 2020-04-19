initialize
initializeWithCreator: anUser forQuestion: aQuestion
	question := aQuestion.
	question addAnswer: self.
	anUser addAnswer: self