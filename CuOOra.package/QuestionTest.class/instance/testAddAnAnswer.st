testing
testAddAnAnswer
	| newAnswer findAnswer |
	"question no tiene ninguna respuesta"
	self assert: question getAnswers size equals: 0.

	"agrego una respuesta"
	newAnswer := Answer
		creator: user2
		text: 'answer to question'
		forQuestion: question.

	"verifico se haya agregado"
	self assert: question getAnswers size equals: 1.
	findAnswer := question getAnswers
		detect: [ :each | each = newAnswer ]
		ifNone: [ nil ].
	self assert: findAnswer isNotNil