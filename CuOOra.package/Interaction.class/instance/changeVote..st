private
changeVote: aVote
"Add the inverted vote to the collection, and remove the vote passed by parameter"
votes remove: aVote.
votes add: aVote investVote.


