testing
testDeleteQuestion

self assert:topic1 getAllMyQuestions size equals: 2.

topic1 deleteQuestion: question1.

self assert:  topic1 getAllMyQuestions size   equals: 1 .

topic1 deleteQuestion: question2.

self assert:  topic1 getAllMyQuestions size equals: 0 .