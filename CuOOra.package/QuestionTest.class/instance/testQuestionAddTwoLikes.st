testing
testQuestionAddTwoLikes
	question
		addLike: user2;
		addLike: user3.
	self assert: question amountLikes equals: 2.
	self assert: question amountDisLikes equals: 0