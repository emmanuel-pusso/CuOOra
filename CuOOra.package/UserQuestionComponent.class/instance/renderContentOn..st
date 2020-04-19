rendering
renderContentOn: aCanvas
	aCanvas heading level3 with: 'Preguntas de ' , user username.
	self renderFollowButtonOn: aCanvas.
	self renderUserQuesionsOn: aCanvas