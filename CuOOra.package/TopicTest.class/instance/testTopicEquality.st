testing
testTopicEquality
	| topicEqual |
	topicEqual := Topic name: 'topicUno' description: 'topicUno'.

	"verifico la igualdad de 2 tópicos"
	self assert: topic1 equals: topicEqual.

	"verifico la desigualdad de 2 tópicos"
	self deny: topic1 equals: topic2.
	self deny: topicEqual equals: topic2