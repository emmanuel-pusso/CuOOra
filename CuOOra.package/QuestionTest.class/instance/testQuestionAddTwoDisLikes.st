testing
testQuestionAddTwoDisLikes
	question
		addDisLike: negativeVoteUser2;
		addDisLike: negativeVoteUser3.
	self assert: question getScore equals: -2