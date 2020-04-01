running
setUp
user1:=User username: 'emma.pusso' password: '1qaz2wsx'.
user2:=User username: 'agus.diaz' password: '1qaz2wsx'.
topic1:= Topic name: 'topicUno' description: 'topicUno'.
topic2:= Topic name: 'topicDos' description: 'topicDos'.
positiveVote:=Like registerVotetoAnUser: user1.
negativeVote:=DisLike registerVotetoAnUser: user1.
question:= Question title: 'question uno' creator: user1 text: 'question uno' topic: topic1. 