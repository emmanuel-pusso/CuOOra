testing
testQuestionWithDisLikeChangeToLike
	question addVote: negativeVote.
	self assert: question getScore equals: -1.
	question addVote: positiveVote.
	self assert: question getScore equals: 1.
	
