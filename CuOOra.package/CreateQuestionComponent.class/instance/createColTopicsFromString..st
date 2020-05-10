private
createColTopicsFromString: aString
	"procesar String de topicos separados por coma"

	| colTopics |
	colTopics := Set new.
	(aString substrings: ',')
		do:
			[ :each | colTopics add: (self session socialNetwork getTopicByName: each) ].
		
	^ colTopics