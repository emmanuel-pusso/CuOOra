testing
testQuestionAddMoreDisLikesThanLikes
	question
		addDisLike: negativeVote;
		addDisLike: negativeVoteUser2;
		addLike: positiveVoteUser3.
	self assert: question getScore equals: -1