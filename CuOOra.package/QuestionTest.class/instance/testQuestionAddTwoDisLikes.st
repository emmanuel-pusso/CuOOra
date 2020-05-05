testing
testQuestionAddTwoDisLikes
	question
		addDisLike: user2;
		addDisLike: user3.
	self assert: question amountLikes equals: 0.
	self assert: question amountDisLikes equals: 2