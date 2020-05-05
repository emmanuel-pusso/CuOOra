testing
testQuestionAddMoreLikesThanDisLikes
	question
		addLike: user1;
		addLike: user2;
		addDisLike: user3.
	self assert: question amountLikes equals: 2.
	self assert: question amountDisLikes equals: 1