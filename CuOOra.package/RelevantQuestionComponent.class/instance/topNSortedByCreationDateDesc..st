private
topNSortedByCreationDateDesc: amountToDisplay
	| topRelevantByCreationDate |
	topRelevantByCreationDate := self session user
		getRelevantQuestionForUser
		asSortedCollection: [ :q1 :q2 | q1 creationTime >= q2 creationTime ].
	topRelevantByCreationDate size < amountToDisplay
		ifTrue: [ ^ topRelevantByCreationDate ]
		ifFalse: [ ^ topRelevantByCreationDate first: amountToDisplay ]