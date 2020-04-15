rendering
renderLikeDislikeInteraction: anInteraction on: aCanvas
	aCanvas
		text: anInteraction amountLikes;
		text: ' likes | ';
		text: anInteraction amountDisLikes;
		text: ' dislikes'.
	aCanvas break.
	aCanvas anchor
		callback: [ anInteraction addLike: (Vote registerVotetoAnUser: self session user) ];
		with: 'Like'.
	"link Like"
	aCanvas text: ' | '.
	"link DisLike"
	aCanvas anchor
		callback:
				[ anInteraction addDisLike: (Vote registerVotetoAnUser: self session user) ];
		with: 'DisLike'