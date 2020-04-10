rendering
renderQuestionsOn: aCanvas
	aCanvas break.
	questions do: [ :each | aCanvas render: (QuestionComponent newWithQuestion: each )]