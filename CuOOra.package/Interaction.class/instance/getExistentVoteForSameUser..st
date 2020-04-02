private
getExistentVoteForSameUser: aVote
	^ votes
		detect: [ :each | each getUser = aVote getUser ]
		ifNone: [ nil ]