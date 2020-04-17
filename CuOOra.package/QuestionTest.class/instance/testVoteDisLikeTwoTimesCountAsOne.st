testing
testVoteDisLikeTwoTimesCountAsOne
	question addDisLike: negativeVote.
	self assert: question amountLikes equals: 0.
	self assert: question amountDisLikes equals: 1.
	question addDisLike: negativeVote.
	self assert: question amountLikes equals: 0.
	self assert: question amountDisLikes equals: 1