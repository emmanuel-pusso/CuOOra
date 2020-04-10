rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 1;
		with: 'CuOOra'.
	aCanvas strong with: 'Usuario'.
	aCanvas space.
	aCanvas anchor
		callback: [ self answer ];
		with: 'Log Out'.
	aCanvas horizontalRule.