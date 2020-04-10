authentication
validUserWithName: anUserName andPassword: aPassword
	^( self validateUserName: anUserName ) & (self validatePassword: aPassword)