initialize
initializeWithCreator: anUser tilte: aTitle text: aText topics: colTopics
	self initializeAnInteracionFromUser: anUser withAText: aText.
	topics addAll: colTopics.
	title := aTitle.
	colTopics do: [ :each | each addQuestion: self ].
	anUser addQuestion: self