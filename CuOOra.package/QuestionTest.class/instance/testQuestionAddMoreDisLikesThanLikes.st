testing
testQuestionAddMoreDisLikesThanLikes
question addVote: negativeVote; addVote: negativeVoteUser2; addVote: positiveVoteUser3.
self assert: question getScore equals: -1.