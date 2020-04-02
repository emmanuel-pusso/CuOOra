set up
setUp 
user1:=User username: 'emma.pusso' password: '1qaz2wsx'.
user2:=User username: 'agus.diaz' password: '2wsx3edc'.
topic1:= Topic name: 'topicUno' description: 'topicUno'.

question2:= Question title: 'question dos' creator: user2 text: 'question 2' topic: topic1.
answer:= Answer creator: user1  text: 'question 3' forQuestion: question2.