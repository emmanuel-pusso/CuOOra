public
getRelevantQuestionForUser
	| result |
	result := OrderedCollection new.
	result
		addAll: self getQuestionsOfTopicOfInterest;
		addAll: self getQuestionsPerformedByMyFollows.
	^ result