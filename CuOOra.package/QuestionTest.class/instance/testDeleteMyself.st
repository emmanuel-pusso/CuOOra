testing
testDeleteMyself
	| deleteFromTopic |
	"Verifico antes del borrado, existan las conecciones"
	self assert: (question2 user getAllMyQuestions includes: question2).
	deleteFromTopic := question getTopics
		flatCollect: [ :each | each getAllMyQuestions ].
	self assert: (deleteFromTopic includes: question2).
	self assert: (question2 getTopics includes: topic1).
	self assert: (question2 getTopics includes: topic2).
	self assert: (question2 getAnswers includes: answer3).

	"Borro la pregunta"
	question2 deleteMySelf.

	"Verifico después del borrado de la pregunta, se hayan borrado las relaciones "
	self deny: (question2 user getAllMyQuestions includes: question).
	deleteFromTopic := question getTopics
		flatCollect: [ :each | each getAllMyQuestions ].
	self deny: (deleteFromTopic includes: question2).
	self assert: question2 getTopics isNil.
	self deny: (question2 getAnswers includes: answer3)