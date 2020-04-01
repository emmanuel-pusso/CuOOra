private 
getQuestionsOfTopicOfInterest
"return a collection with all questions that belongs to each topic of interest for the User"
|allQuestions|
allQuestions:= OrderedCollection new.
topics do: [:each | allQuestions addAll: each questions].
^ allQuestions.