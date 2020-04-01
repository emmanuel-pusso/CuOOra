public
getAllMyAnswersByScore
	^ answers
		asSortedCollection: [ :answer1 :answer2 | answer1 getScore >= answer2 getScore ]