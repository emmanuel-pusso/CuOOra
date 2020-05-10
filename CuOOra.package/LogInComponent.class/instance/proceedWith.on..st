callbacks
proceedWith: anUser on: aSocialNetwork
|componente|
self session user: anUser. 
self session socialNetwork: aSocialNetwork.
componente:= RelevantQuestionComponent new. 
self call: (HomeComponent newComponent: componente)