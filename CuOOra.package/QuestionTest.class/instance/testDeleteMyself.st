testing
testDeleteMyself
	| deleteFromTopic |
	"Borro la pregunta"
	question2 deleteMySelf.

	"Verifico después del borrado de la pregunta, se hayan borrado las relaciones "
	self deny: (question2 user getAllMyQuestions includes: question).
	deleteFromTopic := question getTopics
		flatCollect: [ :each | each getAllMyQuestions ].
	self deny: (deleteFromTopic includes: question2).
	self assert: question2 getTopics isNil.
	self deny: (question2 getAnswers includes: answer3)