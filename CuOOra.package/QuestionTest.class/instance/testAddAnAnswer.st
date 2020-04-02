testing
testAddAnAnswer
	self assert: question getAnswers size equals: 0.
	self assert: question2 getAnswers size equals: 1