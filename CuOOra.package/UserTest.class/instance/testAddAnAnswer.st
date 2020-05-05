tests
testAddAnAnswer
	| newAnswer |
	"User3 no tiene ninguna Respuestas"
	self assert: user3 getAllMyAnswers size equals: 0.

	"User3 agrega una respuesta a una pregunta de otro User"
	newAnswer := Answer
		creator: user3
		text: 'answer1'
		forQuestion: question2.
	self assert: user3 getAllMyAnswers size equals: 1.
	self assert: user3 getAllMyAnswers first equals: newAnswer