rendering
renderAddAnswerButton: aCanvas
	aCanvas
		paragraph: [ aCanvas anchor
				callback: [ self addAnswerButton ];
				with: [ aCanvas button with: 'Agregar Respuesta' ] ]