rendering
renderAddQuestionButton: aCanvas
	aCanvas button
		callback: [ self addNewQuestionButton  ];
		with: 'Hacer una nueva Pregunta'.
	aCanvas break.