private 
getQuestionsPerformedByMyFollows
"return a collection with all answers perfomed by each of the follows user"

^ follows flatCollectAsSet: [ :each | each getAllMyQuestions]