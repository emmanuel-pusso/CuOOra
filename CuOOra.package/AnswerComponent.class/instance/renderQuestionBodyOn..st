rendering
renderQuestionBodyOn: aCanvas
	aCanvas heading level3 with: interaction getTitle .
	aCanvas render: (QuestionComponent newWithQuestion: interaction).
	aCanvas break. 
	aCanvas horizontalRule 
	
	