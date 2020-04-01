private 
getScoreParticipations
"Sum of Like and Dislikes for all User participations in questions and answers"
|scoreForQuestions scoreForAnswers|
scoreForQuestions:= questions inject:0 into: [ :total :each | total + each getScore].
scoreForAnswers:= answers inject:0 into: [ :total :each | total + each getScore].
^ (scoreForQuestions + scoreForAnswers).


