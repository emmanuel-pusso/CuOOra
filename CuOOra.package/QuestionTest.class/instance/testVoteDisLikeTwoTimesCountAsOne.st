testing
testVoteDisLikeTwoTimesCountAsOne
question addVote: negativeVote.
self assert: question getScore equals: -1.
question addVote: negativeVote.
self assert: question getScore equals: -1.