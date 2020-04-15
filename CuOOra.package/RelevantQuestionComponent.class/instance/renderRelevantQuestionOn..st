rendering
renderRelevantQuestionOn: aCanvas
	(self topNSortedByCreationDateDesc: 5)
		do: [ :each | aCanvas render: (QuestionComponent newWithQuestion: each) ]