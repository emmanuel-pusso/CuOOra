initialization
newWithUser: anUser andDescription: aDescription
	^ self new
		user: anUser;
		description: aDescription , anUser username;
		questions: anUser getAllMyQuestions;
		yourself