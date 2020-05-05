testing
testDeleteMyself
	"Verifico antes del borrado, existan las conecciones"
	self assert: (answer1 question getAnswers includes: answer1).
	self assert: (answer1 user getAllMyAnswers includes: answer1).

	"Borro la respuesta"
	answer1 deleteMySelf.

	"Verifico después del borrado de la pregunta, se hayan borrado las relaciones"
	self deny: (answer1 question getAnswers includes: answer1).
	self deny: (answer1 user getAllMyAnswers includes: answer1)