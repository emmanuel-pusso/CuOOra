testing
testQuestionAddOneLikeAndOneDislike
	question addVote: positiveVoteUser2.
	question addVote: negativeVote.
	self assert: question getScore equals: 0