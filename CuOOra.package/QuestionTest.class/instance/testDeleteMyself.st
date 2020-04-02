testing
testDeleteMyself

self assert: question2 getAnswers size equals: 1.
self assert: question2 getTopics size equals: 1.
"remove question2"
question2 deleteMySelf.
self assert: question2 getAnswers size equals: 0.
self assert: question2 getTopics size equals: 0.