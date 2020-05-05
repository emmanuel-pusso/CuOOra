testing
testQuestionWithDisLikeChangeToLike
	question addDisLike: user1.
	self assert: question amountLikes equals: 0.
	self assert: question amountDisLikes equals: 1.
	question addLike: user1.
	self assert: question amountLikes equals: 1.
	self assert: question amountDisLikes equals: 0