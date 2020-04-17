testing
testQuestionAddTwoDisLikes
	question
		addDisLike: negativeVoteUser2;
		addDisLike: negativeVoteUser3.
	self assert: question amountLikes equals: 0.
	self assert: question amountDisLikes equals: 2