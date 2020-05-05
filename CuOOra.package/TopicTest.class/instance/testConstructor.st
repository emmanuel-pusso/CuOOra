testing
testConstructor
	| newTopic |
	newTopic := Topic
		name: 'new topic name'
		description: 'new topic description'.
	self assert: newTopic name equals: 'new topic name'.
	self assert: (newTopic getAllMyQuestions size )equals: 0