running
setUp
|colTopics colTopics2 colTopics3 |
super setUp.

colTopics:=Set  new.
colTopics2:=Set new.
colTopics3 := Set new.

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
user6:= User username: 'someBody' password: '1234'.


"Adding topics of interest to users"
sportTopic := Topic name: 'Deporte' description:'algo relacionado al deporte' .
developmentTopic:= Topic name: 'Programacion' description:'smalltalk practicas' .

colTopics add: developmentTopic.
colTopics2 add: sportTopic.
colTopics3 add: developmentTopic.
colTopics3  add: sportTopic.

user6 addTopicOfInterest: sportTopic.
user6 addTopicOfInterest: developmentTopic.

"Creating Questions"
testQuestion:= Question title: 'Como hacer los test?' creator: user1  text: 'alguien me explica como se hacen' topics: colTopics . 
testQuestion2 := Question title: 'Como remaar?' creator: user4  text: 'probando nuevos preguntas' topics: colTopics2. 

"user1 addTopicOfInterest: colTopics2 ."

answer1:= Answer creator: user1  text: 'answer1' forQuestion: testQuestion .
answer2:= Answer creator: user1  text: 'answer2' forQuestion: testQuestion.