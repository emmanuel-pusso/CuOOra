testing
testQuestionAddMoreLikesThanDisLikes
question addVote: positiveVote; addVote: positiveVoteUser2; addVote: negativeVoteUser3.
self assert: question getScore equals: 1.