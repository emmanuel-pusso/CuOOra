rendering
renderUserQuesionsOn: aCanvas

self user getAllMyQuestions do: [ :each | aCanvas render: (QuestionComponent newWithQuestion: each ) ]