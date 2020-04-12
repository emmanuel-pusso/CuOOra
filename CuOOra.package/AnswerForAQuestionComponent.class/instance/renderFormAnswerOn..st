rendering
renderFormAnswerOn: aCanvas
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Responder: '.
					aCanvas textInput on: #newText of: self ].
			aCanvas button
				callback: [ self accept ];
				with: 'Guardar'.
			aCanvas space.
			aCanvas button
				callback: [ self cancel ];
				with: 'Cancelar' ]