testing
testQuestionAddMoreDisLikesThanLikes
	question
		addDisLike: negativeVote;
		addDisLike: negativeVoteUser2;
		addLike: positiveVoteUser3.
	self assert: question amountLikes equals: 1.
	self assert: question amountDisLikes equals: 2