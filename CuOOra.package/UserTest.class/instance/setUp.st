running
setUp
super setUp.
user1:= User username: 'emma.pusso' password: '1qaz2wsx'.
"user2 reference same Object than user1"
user2:= user1.
"user3 is a different instance with same username"
user3:= User username: 'emma.pusso' password: '1qaz2wsx'.
"user 4 is a different instance with different value but same password "
user4:= User username: 'agus.diaz' password: '1qaz2wsx'.
"user 5 is empty"
user5:= User username: '' password: ''.

"user 6 "
user5:= User username: 'someBody' password: '1234'.


"Adding topics of interest to users"
sportTopic := Topic name: 'Deporte' description:'algo relacionado al deporte' .
developmentTopic:= Topic name: 'Programacion' description:'smalltalk practicas' .

"Creating Questions"
testQuestion:= Question title: 'Como hacer los test?' creator: user1  text: 'alguien me explica como se hacen' topic: developmentTopic. 
testQuestion2 := Question title: 'Como remaar?' creator: user4  text: 'probando nuevos preguntas' topic:sportTopic. 
user1 addTopicOfInterest: sportTopic.

answer1:= Answer creator: user1  text: 'answer1' forQuestion: testQuestion .
answer2:= Answer creator: user1  text: 'answer2' forQuestion: testQuestion.