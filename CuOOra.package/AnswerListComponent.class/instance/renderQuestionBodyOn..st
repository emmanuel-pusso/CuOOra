rendering
renderQuestionBodyOn: aCanvas
super renderQuestionBodyOn: aCanvas.
self renderAnswerBodyOn: aCanvas forQuestion: interaction.
self renderAddAnswerButton: aCanvas
