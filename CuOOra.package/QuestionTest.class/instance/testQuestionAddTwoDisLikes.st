testing
testQuestionAddTwoDisLikes
	question
		addVote: negativeVoteUser2;
		addVote: negativeVoteUser3.
	self assert: question getScore equals: -2