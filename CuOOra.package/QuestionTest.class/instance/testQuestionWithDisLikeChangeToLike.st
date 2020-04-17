testing
testQuestionWithDisLikeChangeToLike
	question addDisLike: negativeVote.
	self assert: question amountLikes equals: 0.
	self assert: question amountDisLikes equals: 1.
	question addLike: positiveVote.
	self assert: question amountLikes equals: 1.
	self assert: question amountDisLikes equals: 0