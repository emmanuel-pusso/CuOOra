set-up
setUp
	| colTopics |
	colTopics := Set new.
	topic1 := Topic name: 'topicUno' description: 'topicUno'.
	topic2 := Topic name: 'topicDos' description: 'topicDos'.
	colTopics add: topic1.
	user1 := User username: 'emma.pusso' password: '1qaz2wsx'.
	questionForTopic1 := Question
		title: 'title question for topic1'
		creator: user1
		text: 'text question for topic1'
		topics: colTopics