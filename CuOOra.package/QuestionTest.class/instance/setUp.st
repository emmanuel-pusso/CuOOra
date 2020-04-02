running
setUp
user1:=User username: 'emma.pusso' password: '1qaz2wsx'.
user2:=User username: 'agus.diaz' password: '2wsx3edc'.
user3:=User username: 'guille.pusso' password: '3edc4rfv'.
topic1:= Topic name: 'topicUno' description: 'topicUno'.
topic2:= Topic name: 'topicDos' description: 'topicDos'.
positiveVote:=Like registerVotetoAnUser: user1.
negativeVote:=DisLike registerVotetoAnUser: user1.
positiveVoteUser2:=Like registerVotetoAnUser: user2.
positiveVoteUser3:=Like registerVotetoAnUser: user3.
negativeVoteUser2:=DisLike registerVotetoAnUser: user2.
negativeVoteUser3:=DisLike registerVotetoAnUser: user3.

question:= Question title: 'question uno' creator: user1 text: 'question uno' topic: topic1. 
question2:= Question title: 'question dos' creator: user2 text: 'question 2' topic: topic1.
answer3:= Answer creator: user1  text: 'question 3' forQuestion: question2.