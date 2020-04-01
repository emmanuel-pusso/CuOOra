functionalities
createAnAnswerFor: aQuestion withText: aText byUser: anUser
	| answer |
	answer := Answer creator: anUser text: aText forQuestion: aQuestion .
	anUser addAnswer: answer.
	aQuestion addAnswer: answer.