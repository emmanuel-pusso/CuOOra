callbacks
accept
	| colTopics question |
	"procesar String de topicos separados por coma"
	colTopics := Set new.
	(newTopics substrings: ',')
		do: [ :each | colTopics add: (Topic name: each description: each) ].
	self newTopics: colTopics.
	question := Question
		title: newTitle
		creator: self session user
		text: newText
		topics: colTopics.
	self session presenter
		call: (HomeComponent newComponent: RelevantQuestionComponent new)