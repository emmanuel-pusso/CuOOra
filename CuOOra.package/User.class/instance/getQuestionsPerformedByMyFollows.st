private 
getQuestionsPerformedByMyFollows
"return a collection with all answers perfomed by each of the follows user"
|allQuestions|
allQuestions:= OrderedCollection new.
follows do: [:each | allQuestions addAll: each getAllMyQuestions ].
^ allQuestions.