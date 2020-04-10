rendering
renderQuestionOn: aCanvas
 self session user getRelevantQuestionForUser do: [ :each | super renderQuestions: each on: aCanvas ]