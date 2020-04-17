testing
testDeleteMyself
	| deleteFromUser deleteFromTopic deleteTopics deleteAnswers allQuestions |
	"Verifico antes del borrado, existan las conecciones"
	deleteFromUser := question2 user getAllMyQuestions
		detect: [ :each | each = question2 ]
		ifNone: [ nil ].
	self deny: deleteFromUser isNil.
	
	allQuestions := Set new.
	question getTopics
		do: [ :each | allQuestions addAll: each getAllMyQuestions ].
	deleteFromTopic := allQuestions
		detect: [ :each | each = question2 ]
		ifNone: [ nil ].
	self assert: deleteFromTopic isNotNil.
	
	deleteTopics := question2 getTopics
		detect: [ :each | each = topic1 ]
		ifNone: [ nil ].
	self assert: deleteTopics isNotNil.
	
	deleteTopics := question2 getTopics
		detect: [ :each | each = topic2 ]
		ifNone: [ nil ].
	self assert: deleteTopics isNotNil.
	
	deleteAnswers := question2 getAnswers
		detect: [ :each | each = answer3 ]
		ifNone: [ nil ].
	self assert: deleteAnswers isNotNil.

	"Borro la pregunta"
	question2 deleteMySelf.
	
	"Verifico después del borrado de la pregunta, se hayan borrado las relaciones"
	deleteFromUser := question2 user getAllMyQuestions
		detect: [ :each | each = question2 ]
		ifNone: [ nil ].
	self assert: deleteFromUser isNil.
	
	allQuestions := Set new.
	question getTopics
		do: [ :each | allQuestions addAll: each getAllMyQuestions ].
	deleteFromTopic := allQuestions
		detect: [ :each | each = question2 ]
		ifNone: [ nil ].
	self deny: deleteFromTopic isNotNil.
	
	self assert: question2 getTopics isNil.
	
	deleteAnswers := question2 getAnswers
		detect: [ :each | each = answer3 ]
		ifNone: [ nil ].
	self deny: deleteAnswers isNotNil