testing
testDeleteAQuestion

self assert: user1 getAllMyQuestions  size equals: 1.
user1 deleteAQuestion: testQuestion .
self assert: user1 getAllMyQuestions  size equals: 0