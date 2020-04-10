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
		callback: [ self haceAlgo: aQuestion user ];
		with: aQuestion user username.
	aCanvas horizontalRule.
	aCanvas break