testing
testDeleteAnAnswer
	| delete |
	"User2 has 3 answers created"
	self assert: user2 getAllMyAnswers size equals: 3.
	
	"delete answer1 related to question2"
	user2 deleteAnAnswer: answer1ToQ2.
	self assert: user2 getAllMyAnswers size equals: 2.
	delete := user2 getAllMyAnswers
		detect: [ :each | each = answer1ToQ2 ]
		ifNone: [ nil ].
	self assert: delete isNil.
	
	"delete answer2 related to question2"
	user2 deleteAnAnswer: answer2ToQ2.
	self assert: user2 getAllMyAnswers size equals: 1.
	delete := user2 getAllMyAnswers
		detect: [ :each | each = answer2ToQ2 ]
		ifNone: [ nil ].
	self assert: delete isNil.
	
	"delete answer1 related to question3"
	user2 deleteAnAnswer: answer1ToQ3.
	self assert: user2 getAllMyAnswers size equals: 0.
