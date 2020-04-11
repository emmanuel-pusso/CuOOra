rendering
renderRelevantQuestionOn: aCanvas
	self session user getRelevantQuestionForUser do: [ :each | aCanvas render: (QuestionComponent newWithQuestion: each )]