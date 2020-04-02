accessing
initializeWithCreator: anUser tilte: aTitle  text: aText topic: aTopic
	self initializeAnInteracionFromUser: anUser withAText: aText.
	topics add: aTopic.
	title := aTitle.
	aTopic addQuestion: self.
	anUser addQuestion: self.