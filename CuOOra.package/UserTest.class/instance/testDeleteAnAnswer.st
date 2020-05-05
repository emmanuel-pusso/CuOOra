testing
testDeleteAnAnswer
	"delete answer1 related to question2"

	user2 deleteAnAnswer: answer1ToQ2.
	self deny: (user2 getAllMyAnswers includes: answer1ToQ2).

	"delete answer2 related to question2"
	user2 deleteAnAnswer: answer2ToQ2.
	self deny: (user2 getAllMyAnswers includes: answer2ToQ2).

	"delete answer1 related to question3"
	user2 deleteAnAnswer: answer1ToQ3.
	self deny: (user2 getAllMyAnswers includes: answer1ToQ3)