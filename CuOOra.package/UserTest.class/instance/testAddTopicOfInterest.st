testing
testAddTopicOfInterest
|findTopic|
"user1 no tiene ningún tópico de interés"
self assert: user1 topics size equals:0.

"agrego a user1 un tópico de interés"
user1 addTopicOfInterest: sportTopic.
self assert: user1 topics size equals:1.
findTopic:= user1 topics detect: [ :each | each = sportTopic ] ifNone: [ nil].
self assert: findTopic isNotNil.
self assert: findTopic name equals: sportTopic name.

