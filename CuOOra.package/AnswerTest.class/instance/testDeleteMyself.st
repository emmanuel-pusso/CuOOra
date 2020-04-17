testing
testDeleteMyself
	| deleteFromQuestion deleteFromUser |
	
	"Verifico antes del borrado, existan las conecciones"
	deleteFromQuestion := answer1 question getAnswers
		detect: [ :each | each = answer1 ]
		ifNone: [ nil ].
	self deny: deleteFromQuestion isNil.
		
	deleteFromUser := answer1 user getAllMyAnswers
		detect: [ :each | each = answer1 ]
		ifNone: [ nil ].
	self deny: deleteFromUser isNil.
	
	"Borro la respuesta"
	answer1 deleteMySelf.
	
	"Verifico después del borrado de la pregunta, se hayan borrado las relaciones"
	deleteFromQuestion := answer1 question getAnswers
		detect: [ :each | each = answer1 ]
		ifNone: [ nil ].
	self assert: deleteFromQuestion isNil.
	
	deleteFromUser := answer1 user getAllMyAnswers
		detect: [ :each | each = answer1 ]
		ifNone: [ nil ].
	self assert: deleteFromUser isNil