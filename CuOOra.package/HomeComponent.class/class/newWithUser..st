initialization
newWithUser: anUser
self halt.
	^ self new
		user: anUser;
		description: 'Preguntas de ' , anUser username;
		questions: anUser getAllMyQuestions;
		yourself