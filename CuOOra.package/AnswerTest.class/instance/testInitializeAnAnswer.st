testing
testInitializeAnAnswer

"Answer has at least a question"

self deny: answer question isNil.

self assert: answer question getTitle equals: 'question dos'.