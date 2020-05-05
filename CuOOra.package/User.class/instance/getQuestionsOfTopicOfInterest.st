private 
getQuestionsOfTopicOfInterest
	"return a collection with all questions that belongs to each topic of interest for the User"

	^ topics flatCollectAsSet: [ :each | each getAllMyQuestions ]