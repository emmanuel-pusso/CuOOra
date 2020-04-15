rendering
renderAnswerBodyOn: aCanvas forQuestion: aQuestion
	aQuestion getAnswers 
		do: [ :each | self renderAnswers: each on: aCanvas ]