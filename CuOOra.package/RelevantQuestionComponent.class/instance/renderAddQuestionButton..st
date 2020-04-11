rendering
renderAddQuestionButton: aCanvas
	aCanvas
		paragraph: [ aCanvas anchor
				callback: [ self addNewQuestionButton ];
				with: [ aCanvas button with: 'Hacer una Nueva Pregunta' ] ].
