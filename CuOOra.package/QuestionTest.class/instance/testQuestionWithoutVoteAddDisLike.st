testing
testQuestionWithoutVoteAddDisLike
	self assert: question amountLikes equals: 0.
	self assert: question amountDisLikes equals: 0.
	question addDisLike: user1.
	self assert: question amountLikes equals: 0.
	self assert: question amountDisLikes equals: 1