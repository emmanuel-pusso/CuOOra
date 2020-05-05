testing
testDeleteAQuestion
	"delete 1 question"

	user3 deleteAQuestion: question2.
	self deny: (user3 getAllMyQuestions includes: question2).

	"delete another question"
	user3 deleteAQuestion: question3.
	self deny: (user3 getAllMyQuestions includes: question3)