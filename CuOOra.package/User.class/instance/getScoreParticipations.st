private 
getScoreParticipations
	"Sum of Like and Dislikes for all User participations in questions and answers"

	^ (questions , answers) sumNumbers: [ :each | each getScore ]