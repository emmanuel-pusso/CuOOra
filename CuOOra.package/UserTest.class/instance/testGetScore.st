testing
testGetScore
	| colTopics newQuestion newAnswer positiveVoteQuestion positiveVoteAnswer negativeVoteQuestion negativeVoteAnswer |
	colTopics := Set new.

	"getScore for User1 is 0"
	self assert: user1 getScore equals: 0.

	"el user1 crea una pregunta"
	colTopics add: developmentTopic.
	newQuestion := Question
		title: 'Como hacer los test?'
		creator: user1
		text: 'alguien me explica como se hacen'
		topics: colTopics.

	"verifico el score, habiendo creado 1 pregunta (20)"
	self assert: user1 getScore equals: 20.

	"el user1 crea una respuesta"
	newAnswer := Answer
		creator: user1
		text: 'add new answer to Q2'
		forQuestion: question2.

	"verifico el score, habiendo creado 1 respuesta (50) + acumulado (20)"
	self assert: user1 getScore equals: 70.

	"el user2 agrega 1 like a una pregunta y el user3  1 like a una respuesta"
	positiveVoteQuestion := Vote registerVotetoAnUser: user2.
	positiveVoteAnswer := Vote registerVotetoAnUser: user3.
	newQuestion addLike: positiveVoteQuestion.
	newAnswer addLike: positiveVoteAnswer.

	"verifico el score, habiendo hecho 2 likes (3) + acumulado (70)"
	self assert: user1 getScore equals: 72.

	"el user2 agrega 1 dislike a una respuesta y el user3  1 dislike a pregunta"
	negativeVoteQuestion := Vote registerVotetoAnUser: user3.
	negativeVoteAnswer := Vote registerVotetoAnUser: user2.
	newQuestion addDisLike: negativeVoteQuestion.
	newAnswer addDisLike: negativeVoteAnswer.

	"verifico el score, habiendo hecho 2 dislikes (-1) + acumulado (72)"
	self assert: user1 getScore equals: 70