testing
testDeleteQuestion
	"topic1 tiene una pregunta"
	self assert: topic1 getAllMyQuestions size equals: 1.
	"borro la pregunta del topic1"
	topic1 deleteQuestion: questionForTopic1.
	"verifico la pregunta fue borrada"
	self assert: topic1 getAllMyQuestions size equals: 0