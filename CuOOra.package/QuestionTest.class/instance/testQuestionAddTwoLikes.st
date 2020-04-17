testing
testQuestionAddTwoLikes
	question
		addLike: positiveVoteUser2;
		addLike: positiveVoteUser3.
	self assert: question amountLikes equals: 2.
	self assert: question amountDisLikes equals: 0