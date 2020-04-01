private
getExistantVoteForSameUser: aVote
^ votes detect:[ :each | each getUser = aVote getUser ] ifNone: [nil].