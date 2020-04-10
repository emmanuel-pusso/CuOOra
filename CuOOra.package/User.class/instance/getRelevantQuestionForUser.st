public
getRelevantQuestionForUser
	| result |
	result := Set  new.
	result
		addAll: self getQuestionsOfTopicOfInterest;
		addAll: self getQuestionsPerformedByMyFollows.
	^ result