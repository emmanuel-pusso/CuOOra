testing
testGetRelevantQuestionForUser
	"User1 no tiene ningún tópico de interés y no sigue a ningún usuario"
	self assert: user1 topics size equals: 0.
	self assert: user1 follows size equals: 0.
	self assert: user1 getRelevantQuestionForUser size equals: 0.

	"user 1 sigue a user3 que tiene 2 preguntas"
	self assert: user3 getAllMyQuestions size equals: 2.
	user1 follow: user3.
	self assert: user1 getRelevantQuestionForUser size equals: 2.

	"Verifico que cada pregunta agregada como de interés corresponde al user que sigo"
	self assert: ((user1 getRelevantQuestionForUser) includes: question2 ).
	self assert: ((user1 getRelevantQuestionForUser) includes: question3 ).

	"user1 agrega como tópico de interés, al tópico 'travelTopic' (que tiene a question4)"
	user1 addTopicOfInterest: travelTopic.
	self assert: ((user1 getRelevantQuestionForUser) includes: question4 )