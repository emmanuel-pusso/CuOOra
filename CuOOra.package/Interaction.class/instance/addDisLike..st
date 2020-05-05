public
addDisLike: aUser
	| aVote |
	aVote := Vote registerVotetoAnUser: aUser.
	(likes includes: aVote)
		ifTrue: [ likes remove: aVote ].
	(dislikes includes: aVote)
		ifFalse: [ dislikes add: aVote ]