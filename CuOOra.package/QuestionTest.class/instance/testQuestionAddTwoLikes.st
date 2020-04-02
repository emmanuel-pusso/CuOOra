testing
testQuestionAddTwoLikes
	question
		addVote: positiveVoteUser2;
		addVote: positiveVoteUser3.
	self assert: question getScore equals: 2