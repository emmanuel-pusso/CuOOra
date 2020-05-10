functionalities
getTopicByName: aString
"return the Topic wich name is aString, if not exist create the topic and returns it"
	^ topics
		detect: [ :each | each name = aString ]
		ifNone: [ Topic name: aString description: aString ]