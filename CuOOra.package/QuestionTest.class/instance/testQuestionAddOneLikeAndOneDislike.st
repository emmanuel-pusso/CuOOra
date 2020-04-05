testing
testQuestionAddOneLikeAndOneDislike
	question
		addLike: positiveVoteUser2;
		addDisLike: negativeVote.
	self assert: question getScore equals: 0