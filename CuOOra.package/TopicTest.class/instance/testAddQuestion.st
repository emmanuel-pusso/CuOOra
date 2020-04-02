testing
testAddQuestion

"Question  list for topic2 should be empty"

self assert: topic2 getAllMyQuestions  isEmpty.

"question list for topic1 should have at least 1 element"

self assert: topic1 getAllMyQuestions size equals: 2.