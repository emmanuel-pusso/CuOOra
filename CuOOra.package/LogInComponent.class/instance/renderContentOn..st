rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 1;
		with: 'CuOOra'.
	aCanvas
				form: [ aCanvas  paragraph: [ 
								aCanvas strong with: 'Usuario:'.
									aCanvas space.
									aCanvas textInput on: #usuario of: self .
							aCanvas].
							aCanvas paragraph: [  
								aCanvas strong with: 'Contraseña:'.
									aCanvas space.
									aCanvas textInput
										on: #contraseña of: self;
										type: 'password' ].
							aCanvas submitButton
								callback: [ self iniciarSesion ];
								with: 'Iniciar Sesion' ] 