comparing
= aVote
	"a Vote is equals to another, when was created by the same user, and has the same value"

	^ self getUser = aVote getUser
		and: [ self getValue = aVote getValue ]