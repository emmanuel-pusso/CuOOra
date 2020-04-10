rendering
renderQuestionsOn: aCanvas
|questionList|
	questionList := QuestionComponent new.
	aCanvas heading level3 with: 'Ultimas Preguntas'.
	self renderAddQuestionOn: aCanvas. "FALTA IMPLEMENTAR"
	aCanvas break.

	aCanvas render: questionList. 