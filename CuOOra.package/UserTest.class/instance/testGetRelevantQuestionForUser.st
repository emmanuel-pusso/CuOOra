testing
testGetRelevantQuestionForUser
	"testeo si no tinen ninguna pregunta"

	self assert: user5 getRelevantQuestionForUser isEmpty.
	self assert: user1 getRelevantQuestionForUser size equals: 1.
	user1 follow: user4.
	self assert: user1 getRelevantQuestionForUser size equals: 2.