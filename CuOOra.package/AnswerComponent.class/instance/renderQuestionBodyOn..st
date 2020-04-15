rendering
renderQuestionBodyOn: aCanvas
	aCanvas render: (QuestionComponent newWithQuestion: interaction).
	aCanvas break. 
	aCanvas horizontalRule.
	