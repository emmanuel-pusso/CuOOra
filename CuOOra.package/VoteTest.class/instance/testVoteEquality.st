testing
testVoteEquality
	"prueba la igualdad de 2 vostos"

	| vote1 vote2 vote3 |
	vote1 := Vote registerVotetoAnUser: user1.
	vote2 := Vote registerVotetoAnUser: user1.
	vote3 := Vote registerVotetoAnUser: user2.
	"pruebo la igualdad de vote1 y vote2"
	self assert: vote1 equals: vote2.
	"pruebo la desigualdad de votes"
	self deny: vote1 equals: vote3.
	self deny: vote2 equals: vote3