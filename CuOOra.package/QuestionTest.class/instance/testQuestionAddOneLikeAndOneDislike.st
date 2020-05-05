testing
testQuestionAddOneLikeAndOneDislike
	question
		addLike: user2;
		addDisLike: user1.
	self assert: question amountLikes equals: 1.
	self assert: question amountDisLikes equals: 1