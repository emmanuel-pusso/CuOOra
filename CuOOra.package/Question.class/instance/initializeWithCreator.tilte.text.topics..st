initialize
initializeWithCreator: anUser tilte: aTitle text: aText topics: colTopics
	self initializeAnInteracionFromUser: anUser withAText: aText.
	topics addAll: colTopics.
	title := aTitle.
	colTopics do: [ :each | each addQuestion: self ].
	"Es necesario para que cuando un User crea una pregunta, aparezca en el listado de preguntas relevantes"
	colTopics do: [ :each | anUser addTopicOfInterest: each].
	anUser addQuestion: self