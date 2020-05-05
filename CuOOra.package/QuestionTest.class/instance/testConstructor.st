testing
testConstructor
	| newQuestion colTopics |
	
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
		
	self assert: newQuestion user equals: user1.
	self assert: newQuestion user username equals: 'emma.pusso'.
	self assert: newQuestion getTitle equals: 'new question title'.
	self assert: newQuestion getText equals: 'new question text'.
	self assert: newQuestion getTopics size equals: 2.
	self assert: ((newQuestion getTopics) includes: topic1).
	self assert: ((newQuestion getTopics) includes: topic2 ).