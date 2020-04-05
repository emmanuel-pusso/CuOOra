public
addLike: aVote
	(dislikes includes: aVote)
		ifTrue: [ dislikes remove: aVote ].
	(likes includes: aVote)
		ifFalse: [ likes add: aVote ]