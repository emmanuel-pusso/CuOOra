initialization
newComponent: aComponent withUser: anUser
	^ self new
		user: anUser;
		myComponent: aComponent;
		yourself