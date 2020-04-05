testing
testQuestionWithLikeChangeToDisLike
	question addLike: positiveVote.
	self assert: question getScore equals: 1.
	question addDisLike: negativeVote.
	self assert: question getScore equals: -1