public
addDisLike: aVote
	(likes includes: aVote)
		ifTrue: [ likes remove: aVote ].
	(dislikes includes: aVote)
		ifFalse: [ dislikes add: aVote ]