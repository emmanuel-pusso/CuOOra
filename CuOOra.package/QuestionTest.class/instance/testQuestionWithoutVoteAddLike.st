testing
testQuestionWithoutVoteAddLike
self assert: question getScore equals: 0.
question addVote: positiveVote.
self assert: question getScore equals: 1.