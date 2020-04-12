rendering
renderQuestions: aQuestion on: aCanvas
	aCanvas emphasis: aQuestion getTitle.
	aCanvas break.
	aCanvas text: 'Topics: '.
	aQuestion getTopics
		do: [ :each1 | 
			aCanvas
				text: each1 name;
				text: ',';
				space ].
	aCanvas break.
	aCanvas text: 'Realizada por: '.
	aCanvas anchor
		callback: [ self proceedWith: aQuestion getUser ];
		with: aQuestion user username.
	aCanvas break.
	aCanvas
		text: aQuestion amountLikes;
		text: ' likes | ';
		text: aQuestion amountDisLikes;
		text: ' dislikes'.
	aCanvas break.
	aCanvas anchor
		callback: [ aQuestion addLike: (Vote registerVotetoAnUser: self session user) ];
		with: 'Like'.
	"link Like"
	aCanvas text: ' | '.
	"link DisLike"
	aCanvas anchor
		callback: [ aQuestion addDisLike: (Vote registerVotetoAnUser: self session user) ];
		with: 'DisLike'.
	aCanvas horizontalRule.
	aCanvas break