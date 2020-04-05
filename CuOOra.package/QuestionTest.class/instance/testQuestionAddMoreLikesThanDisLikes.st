testing
testQuestionAddMoreLikesThanDisLikes
	question
		addLike: positiveVote;
		addLike: positiveVoteUser2;
		addDisLike: negativeVoteUser3.
	self assert: question getScore equals: 1