adding
addNewQuestionButton
	"aca debe hacer una llamada al componente de emanuel que desplega formulario para agregar nueva pregunta"
	| editor |
	editor := CreateQuestionComponent question: Question new.
	self call: editor.
	editor question
		ifNotNil: [ self session user addQuestion: editor question ]