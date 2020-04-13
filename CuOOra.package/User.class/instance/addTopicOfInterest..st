public
addTopicOfInterest: aTopic
	| topicExist |
	topicExist := topics
		detect: [ :each | each = aTopic ]
		ifNone: [ nil ].
	topicExist
		ifNil: [ topics add: aTopic ]
		ifNotNil: [ topicExist getAllMyQuestions addAll: aTopic getAllMyQuestions ]