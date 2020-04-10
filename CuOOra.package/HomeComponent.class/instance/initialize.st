initialize
initialize
	super initialize.
	header := HeaderComponent new.
	header onAnswer: [ :answer | self answer ].
	questions := Set new.
	description := 'Ultimas preguntas'.
	questions addAll: self session user getRelevantQuestionForUser