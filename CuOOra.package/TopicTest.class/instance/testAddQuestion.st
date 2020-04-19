testing
testAddQuestion
	| newQuestion colTopics findQuestion |
	"topic2 no tiene ninguna pregunta"
	self assert: topic2 getAllMyQuestions isEmpty.

	"creo una pregunta para el tópico2"
	colTopics := Set new.
	colTopics add: topic2.
	newQuestion := Question
		title: 'title question for topic2'
		creator: user1
		text: 'text question for topic2'
		topics: colTopics.

	"verifico que el tópico agrego la pregunta"
	self assert: topic2 getAllMyQuestions size equals: 1.
	findQuestion := topic2 getAllMyQuestions
		detect: [ :each | each = newQuestion ]
		ifNone: [ nil ].
	self assert: findQuestion isNotNil.

	"topic1 tiene una pregunta"
	self assert: topic1 getAllMyQuestions size equals: 1.
	"agrego una nueva pregunta"
	topic1 addQuestion: newQuestion.
	"verifico que el tópico agrego la pregunta"
	self assert: topic1 getAllMyQuestions size equals: 2.
	findQuestion := topic1 getAllMyQuestions
		detect: [ :each | each = newQuestion ]
		ifNone: [ nil ].
	self assert: findQuestion isNotNil