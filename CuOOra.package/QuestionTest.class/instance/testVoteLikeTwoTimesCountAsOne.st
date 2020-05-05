testing
testVoteLikeTwoTimesCountAsOne
	question addLike: user1.
	self assert: question amountLikes equals: 1.
	self assert: question amountDisLikes equals: 0.
	question addLike: user1.
	self assert: question amountLikes equals: 1.
	self assert: question amountDisLikes equals: 0