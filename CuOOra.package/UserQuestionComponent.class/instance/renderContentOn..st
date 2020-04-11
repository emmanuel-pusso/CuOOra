rendering
renderContentOn: aCanvas
	aCanvas
		paragraph: [ aCanvas heading level3 with: 'Preguntas de ' , user username.
			aCanvas anchor
				callback: [ self follow ];
				with: 'Follow' ].

	self renderUserQuesionsOn: aCanvas