rendering
renderQuestionBodyOn: aCanvas
	aCanvas render: (QuestionComponent newWithQuestion: question).
	aCanvas break. 
	aCanvas horizontalRule.
	