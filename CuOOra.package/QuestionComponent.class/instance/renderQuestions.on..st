rendering
renderQuestions: aQuestion on: aCanvas
	aCanvas anchor callback: [ self clickOnQuestion]; 
	with: aQuestion getTitle.
	"VER SI SE PUDE PONER ESTILO DE LETRA EN ESTE ANCHOR (emphasis)"
	aCanvas break.
	aCanvas text: 'Topics: '.
	aQuestion getTopics
		do: [ :each1 | 
			aCanvas
				text: each1 name;
				text: ',';
				space ].
	aCanvas break.
	aCanvas text: 'Realizada por: '.
	aCanvas anchor
		callback: [ self proceedWith: aQuestion getUser ];
		with: aQuestion user username.
	aCanvas text: ' | ', (aQuestion getAnswers size asString), ' respuestas' .

	aCanvas break.
	super renderLikeDislikeInteraction: aQuestion on: aCanvas.
	"Codigo de like dislike a prueba desde aqui hasta el prox render"
	
	aCanvas horizontalRule.
	aCanvas break