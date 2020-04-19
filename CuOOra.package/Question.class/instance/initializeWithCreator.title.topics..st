initialize
initializeWithCreator: anUser title: aTitle topics: colTopics
	title := aTitle.
	colTopics do: [ :each | each addQuestion: self ].
	"Es necesario para que cuando un User crea una pregunta, aparezca en el listado de preguntas relevantes"
	colTopics do: [ :each | anUser addTopicOfInterest: each ].
	topics addAll: colTopics.
	anUser addQuestion: self