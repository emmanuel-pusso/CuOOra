rendering
renderAnswers: anAnswer on: aCanvas
	aCanvas text: 'Respuesta de  '.
	aCanvas text: anAnswer user username.
	aCanvas break.
	aCanvas text: anAnswer getText.
	aCanvas break.
	self renderLikeDislikeInteraction: anAnswer on: aCanvas.
	aCanvas horizontalRule.
	aCanvas break
