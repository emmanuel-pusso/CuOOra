rendering
renderQuestions: aQuestion on: aCanvas
	aCanvas horizontalRule.
	aCanvas break.
	aCanvas anchor
		callback: [ self clickOnQuestion ];
		with: aQuestion getTitle.
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
	aCanvas
		text: ' | ' , aQuestion getAnswers size asString , ' respuestas'.
	aCanvas break.
	self renderLikeDislikeInteraction: aQuestion on: aCanvas
