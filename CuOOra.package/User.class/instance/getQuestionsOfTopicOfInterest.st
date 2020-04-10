private 
getQuestionsOfTopicOfInterest
"return a collection with all questions that belongs to each topic of interest for the User"
|allQuestions|
allQuestions:= Set new.
topics do: [:each | allQuestions addAll: each getAllMyQuestions ].
^ allQuestions.