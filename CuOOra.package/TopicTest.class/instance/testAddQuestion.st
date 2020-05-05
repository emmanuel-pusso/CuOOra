testing
testAddQuestion
	| newQuestion colTopics |
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
	self assert: (topic2 getAllMyQuestions includes: newQuestion).

	"agrego una nueva pregunta a topic1"
	topic1 addQuestion: newQuestion.
	"verifico que el tópico agrego la pregunta"
	self assert: (topic1 getAllMyQuestions includes: newQuestion)