callbacks
accept
	| colTopics |
	question newTitle: newTitle.
	question newText: newText.
	"procesar String de topicos separados por coma (ver si hay otra manera)"
	colTopics := Set new.
	(newTopics substrings: ', ') do: [ :each | colTopics add: each ].
	question newTopics: colTopics.
	self answer