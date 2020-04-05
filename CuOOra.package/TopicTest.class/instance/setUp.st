set-up
setUp 
|colTopics|
colTopics:= Set new.

user1:=User username: 'emma.pusso' password: '1qaz2wsx'.
user2:=User username: 'agus.diaz' password: '2wsx3edc'.
topic1:= Topic name: 'topicUno' description: 'topicUno'.
topic2:=Topic name: 'topicDos' description: 'topicDos'.
colTopics add: topic1.

question2:= Question title: 'question dos' creator: user2 text: 'question 2' topics: colTopics.
question1:= Question title: 'question uno' creator: user1 text: 'question 1' topics: colTopics.
