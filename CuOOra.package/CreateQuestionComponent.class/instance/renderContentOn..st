rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Nueva Pregunta'.
	aCanvas horizontalRule.
	aCanvas
		form: [ aCanvas
				paragraph: [ aCanvas label: 'Titulo: '.
					aCanvas textInput on: #newTitle of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Desarrollo: '.
					aCanvas textInput on: #newText of: self ].
			aCanvas
				paragraph: [ aCanvas label: 'Topicos: '.
					aCanvas textInput on: #newTopics of: self ].
			aCanvas button
				callback: [ self accept ];
				with: 'Guardar'.
			aCanvas space.
			aCanvas button
				callback: [ self cancel ];
				with: 'Cancelar' ]