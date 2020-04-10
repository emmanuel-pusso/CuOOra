rendering
renderContentOn: aCanvas
	aCanvas heading level3 with: 'Ultimas preguntas'.
	self renderAddQuestionButton: aCanvas .
	self renderRelevantQuestionOn:  aCanvas.