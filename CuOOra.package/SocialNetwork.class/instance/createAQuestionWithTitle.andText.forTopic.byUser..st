functionalities
createAQuestionWithTitle: aTitle andText: aText forTopic: aTopic byUser: anUser
	| question |
	question := Question
		title: aTitle
		creator: anUser
		text: aText
		topic: aTopic.
	anUser addQuestion: question.
	aTopic addQuestion: question.