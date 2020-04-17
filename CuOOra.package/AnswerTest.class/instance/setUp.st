set-up
setUp 
|colTopics|
colTopics:= Set new.

user1:=User username: 'emma.pusso' password: '1qaz2wsx'.
user2:=User username: 'agus.diaz' password: '2wsx3edc'.
topic1:= Topic name: 'topicUno' description: 'topicUno'.
colTopics add:topic1.

question1:= Question title: 'question uno' creator: user2 text: 'question1' topics: colTopics.
answer1:= Answer creator: user1  text: 'answer1 for question1' forQuestion: question1.