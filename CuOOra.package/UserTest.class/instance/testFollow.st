testing
testFollow
	"un usuario agrega a otro usuario"

	user4 follow: user1.
	self assert: (user4 follows includes: user1).

	"user4 agrega devuelta al user 1"
	user4 follow: user1.
	self assert: user4 follows size equals: 1.

	"un usuario se sigue a si mismo"
	user4 follow: user4.
	self deny: (user4 follows includes: user4)