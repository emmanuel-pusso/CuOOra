testing
testGetRelevantQuestionForUser
	| questionUserThatFollow questionOfInterest |
	"User1 no tiene ningún tópico de interés y no sigue a ningún usuario"
	self assert: user1 topics size equals: 0.
	self assert: user1 follows size equals: 0.
	self assert: user1 getRelevantQuestionForUser size equals: 0.

	"user 1 sigue a user3 que tiene 2 preguntas"
	self assert: user3 getAllMyQuestions size equals: 2.
	user1 follow: user3.
	self assert: user1 getRelevantQuestionForUser size equals: 2.

	"Verifico que cada pregunta agregada como de interés corresponde al user que sigo"
	questionUserThatFollow := user1 getRelevantQuestionForUser
		detect: [ :each | each = question2 ]
		ifNone: [ nil ].
	self assert: questionUserThatFollow isNotNil.
	
	questionUserThatFollow := user1 getRelevantQuestionForUser
		detect: [ :each | each = question3 ]
		ifNone: [ nil ].
	self assert: questionUserThatFollow isNotNil.

	"user1 agrega como tópico de interés, al tópico 'travelTopic' (que tiene a question4)"
	self assert: travelTopic getAllMyQuestions size equals: 1.
	user1 addTopicOfInterest: travelTopic.
	self assert: user1 getRelevantQuestionForUser size equals: 3.
	
	questionOfInterest := user1 getRelevantQuestionForUser
		detect: [ :each | each = question4 ]
		ifNone: [ nil ].
	self assert: questionOfInterest isNotNil