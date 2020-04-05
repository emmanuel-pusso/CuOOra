testing
testQuestionWithoutVoteAddLike
self assert: question getScore equals: 0.
question addLike: positiveVote.
self assert: question getScore equals: 1.