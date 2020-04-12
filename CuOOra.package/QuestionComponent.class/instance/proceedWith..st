callbakcs
proceedWith: anUser
	self session presenter
		call:
			(HomeComponent
				newComponent: (UserQuestionComponent newWithUser: anUser))