rendering
renderLikeDislikeInteraction: anInteraction on: aCanvas
	aCanvas
		text: anInteraction amountLikes;
		text: ' likes | ';
		text: anInteraction amountDisLikes;
		text: ' dislikes'.
	aCanvas break.
	aCanvas anchor
		callback: [ self likeButtonOn: anInteraction ];
		with: 'Like'.
	"link Like"
	aCanvas text: ' | '.
	"link DisLike"
	aCanvas anchor
		callback:
				[ self disLikeButtonOn: anInteraction  ];
		with: 'DisLike'