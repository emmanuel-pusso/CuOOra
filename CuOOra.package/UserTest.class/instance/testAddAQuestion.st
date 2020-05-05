tests
testAddAQuestion
	| newQuestion colTopics |
	colTopics := Set new.
	"User no tiene preguntas"
	self assert: user1 getAllMyQuestions size equals: 0.

	" User crea una pregunta, y se agrega automáticamente al User"
	colTopics
		add: sportTopic;
		add: developmentTopic.
	newQuestion := Question
		title: 'Como hacer los test?'
		creator: user1
		text: 'alguien me explica como se hacen'
		topics: colTopics.
	self assert: user1 getAllMyQuestions size equals: 1.
	self assert: user1 getAllMyQuestions first equals: newQuestion
	