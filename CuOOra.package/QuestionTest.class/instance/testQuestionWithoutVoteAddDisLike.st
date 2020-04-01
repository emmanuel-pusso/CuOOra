testing
testQuestionWithoutVoteAddDisLike
self assert: question getScore equals: 0.
question addVote: negativeVote.
self assert: question getScore equals: -1.