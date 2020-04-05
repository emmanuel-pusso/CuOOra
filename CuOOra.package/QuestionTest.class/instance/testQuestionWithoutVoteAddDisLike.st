testing
testQuestionWithoutVoteAddDisLike
self assert: question getScore equals: 0.
question addDisLike: negativeVote.
self assert: question getScore equals: -1.