functionalities
getAllQuestions
	| allQuestions |
	allQuestions := OrderedCollection new.
	users do: [ :each | allQuestions addAll: each getAllMyQuestions ].
	^ allQuestions