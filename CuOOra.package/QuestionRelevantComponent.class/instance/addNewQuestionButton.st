adding
addNewQuestionButton
	| editor |
	editor := CreateQuestionComponent
		question:
			(Question
				title: ''
				creator: self session user
				text: ''
				topics: nil).
	self call: editor.
	editor question
		ifNotNil: [ self session user addQuestion: editor question ]