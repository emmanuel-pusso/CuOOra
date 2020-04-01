testing
testInvestVoteFromLikeToDislike
|changeVote|
self assert: like getValue equals: 1.
changeVote:= like investVote.
self assert: changeVote getValue equals: -1.

