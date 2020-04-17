testing
testDeleteAQuestion
	| delete |
	"User3 has 2 questions created"
	self assert: user3 getAllMyQuestions size equals: 2.
	
	"delete 1 question"
	user3 deleteAQuestion: question2.
	self assert: user3 getAllMyQuestions size equals: 1.
	delete := user3 getAllMyQuestions
		detect: [ :each | each = question2 ]
		ifNone: [ nil ].
	self assert: delete isNil.
	
	"delete another question"
	user3 deleteAQuestion: question3.
	self assert: user3 getAllMyQuestions size equals: 0.
