testing
testFollow
	|follow|
	"User1 no sigue a nadie"
	self assert: user1 follows size equals:0.
	"User1 sigue a User2"
	user1 follow: user2.
	self assert: user1 follows size equals:1.
	"User1 sigue a User3"
	user1 follow: user3.
	self assert: user1 follows size equals:2.
	
	"verifico que los seguidores agregados se hayan agregado a la lista de mis seguidores"
	follow:= user1 follows detect: [ :each | each = user2 ] ifNone: [ nil ].
	self assert: follow isNotNil.
	self assert: follow = user2.
	
	follow:= user1 follows detect: [ :each | each = user3 ] ifNone: [ nil ].
	self assert: follow isNotNil.
	self assert: follow = user3.