public
addLike: aUser
	| aVote |
	aVote := Vote registerVotetoAnUser: aUser.
	(dislikes includes: aVote)
		ifTrue: [ dislikes remove: aVote ].
	(likes includes: aVote)
		ifFalse: [ likes add: aVote ]