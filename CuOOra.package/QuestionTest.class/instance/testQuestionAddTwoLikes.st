testing
testQuestionAddTwoLikes
	question
		addLike: positiveVoteUser2;
		addLike: positiveVoteUser3.
	self assert: question getScore equals: 2