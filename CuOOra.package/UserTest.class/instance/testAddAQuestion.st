tests
testAddAQuestion
"User has not question"

self assert: user5 getAllMyQuestions isEmpty. 

" User has 1 question"

self assert: user4 getAllMyQuestions  size equals: 1.