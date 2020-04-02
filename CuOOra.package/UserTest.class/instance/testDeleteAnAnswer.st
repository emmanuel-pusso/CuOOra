testing
testDeleteAnAnswer
	self assert: user5 answers size equals: 0.
	self assert: user1 answers size equals: 2.
	user1 deleteAnAnswer: answer1.
	self assert: user1 answers size equals: 1.
	user1 deleteAnAnswer: answer2.
	self assert: user1 answers size equals: 0