testing
testVoteLikeTwoTimesCountAsOne
question addLike: positiveVote.
self assert: question getScore equals: 1.
question addLike: positiveVote.
self assert: question getScore equals: 1.
