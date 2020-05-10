callbacks
accept
	| colTopics question |
	colTopics := self createColTopicsFromString: newTopics.
	self newTopics: colTopics.
	question := Question
		title: newTitle
		creator: self session user
		text: newText
		topics: colTopics.
	self model addManyTopics: colTopics.
	self session presenter
		call: (HomeComponent newComponent: RelevantQuestionComponent new)