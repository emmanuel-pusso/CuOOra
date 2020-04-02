testing
testFollow
"un usuario se sigue a si mismo. no deberia agregarse en la lista de follows porque es un Set, sin embargo si se agrega. chequearlo"
user4 follow: user4.
self deny: (user4 follows includes: user4).
"un usuario agrega a otro usuario"
user4 follow:  user1.
self assert: (user4 follows includes: user1).