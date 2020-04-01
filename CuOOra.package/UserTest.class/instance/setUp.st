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