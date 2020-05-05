functionalities
getAllQuestions
	^ users flatCollect: [ :each | each getAllMyQuestions  ].