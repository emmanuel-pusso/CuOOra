rendering
renderContentOn: aCanvas
	aCanvas render: header.
	self renderDescriptionOn: aCanvas. 
	self renderQuestionsOn: aCanvas
	