testing
testConstructor
	| newQuestion colTopics findTopic |
	
	"Creo la pregunta"
	colTopics := Set new.
	colTopics
		add: topic1;
		add: topic2.
	newQuestion := Question
		title: 'new question title'
		creator: user1
		text: 'new question text'
		topics: colTopics.
		
	self assert: newQuestion user = user1.
	self assert: newQuestion user username equals: 'emma.pusso'.
	self assert: newQuestion getTitle equals: 'new question title'.
	self assert: newQuestion getText equals: 'new question text'.

	self assert: newQuestion getTopics size = 2.
	findTopic := newQuestion getTopics
		detect: [ :each | each = topic1 ]
		ifNone: [ nil ].
	self assert: findTopic isNotNil.
	
	findTopic := newQuestion getTopics
		detect: [ :each | each = topic2 ]
		ifNone: [ nil ].
	self assert: findTopic isNotNil