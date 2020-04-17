testing
testConstructor
	| newUser |
	newUser := User username: 'natu.ramirez' password: '1qaz2wsx'.
	self assert: (newUser validateUserName: 'natu.ramirez').
	self assert: (newUser validatePassword: '1qaz2wsx').