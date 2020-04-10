callbacks
proceedWith: anUser 
|componente|
self session user: anUser. 
componente:= QuestionRelevantComponent new. 
self call: (HomeComponent newComponent: componente  withUser: anUser)