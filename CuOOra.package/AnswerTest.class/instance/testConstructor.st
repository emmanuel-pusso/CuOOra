testing
testConstructor
	| newAnswer |
	newAnswer := Answer
		creator: user1
		text: 'new answer to question1'
		forQuestion: question1.
	self assert: newAnswer user = user1.
	self assert: newAnswer user username equals: 'emma.pusso'.
	self assert: newAnswer getText equals: 'new answer to question1'.
	self assert: newAnswer question getTitle equals: 'question uno'