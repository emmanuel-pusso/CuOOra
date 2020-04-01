public
addVote: aVote
"check if vote already exist (same User, and same value). 
	If exists, remove current vote and add te invested vote. 
	If not exist, add the vote"
|voteAlreadyExist|
voteAlreadyExist:=self getExistantVoteForSameUser: aVote.

(voteAlreadyExist)
	ifNil: [votes add: aVote] 
	ifNotNil: [ (aVote getValue = voteAlreadyExist getValue)
					ifFalse: [self changeVote: voteAlreadyExist]
				]



