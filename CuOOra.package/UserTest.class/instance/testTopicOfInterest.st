testing
testTopicOfInterest
	"User's topic list is empty"
	self assert: user5 topics isEmpty .
	"User's topic list do not include a particular topic of interest"
	self deny: (user1 topics includes: developmentTopic ).
	"User's topic list  include a particular topic of interest"
	user1 addTopicOfInterest: sportTopic.
	self assert: (user1 topics includes: sportTopic).
	user1 addTopicOfInterest: sportTopic.
	self assert: user1 topics size equals: 1.
	"Topics list is empty "
	self assert: user4 topics isEmpty