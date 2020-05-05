testing
testQuestionAddMoreDisLikesThanLikes
	question
		addDisLike: user1;
		addDisLike: user2;
		addLike: user3.
	self assert: question amountLikes equals: 1.
	self assert: question amountDisLikes equals: 2