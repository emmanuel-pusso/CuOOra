rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 1;
		with: 'CuOOra'.
	aCanvas strong with: self session user username.
	aCanvas space.
	aCanvas anchor
		callback: [ self  logOut  ];
		with: 'Log Out'.
	aCanvas horizontalRule.