testing
testQuestionAddOneLikeAndOneDislike
	question
		addLike: positiveVoteUser2;
		addDisLike: negativeVote.
	self assert: question amountLikes equals: 1.
	self assert: question amountDisLikes equals: 1