callbacks
proceedWith: anUser 
|componente|
self session user: anUser. 
componente:= RelevantQuestionComponent new. 
self call: (HomeComponent newComponent: componente)