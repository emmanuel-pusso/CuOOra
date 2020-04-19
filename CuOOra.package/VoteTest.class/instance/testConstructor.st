testing
testConstructor
	| newVote |
	newVote := Vote registerVotetoAnUser: user1.
	self assert: newVote getUser = user1