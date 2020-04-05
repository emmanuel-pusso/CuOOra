instance creation
example
	| names example probabilities questions topics |
	example := SocialNetwork new.
	names := #('agus' 'ema' 'pedro' 'juan').
	questions := #('que?' 'como?' 'cuando?' 'donde?').
	topics:= Set new.
	topics add: (Topic name: 'otro' description: 'algo que pasa').
	names
		do: [ :each | 
			example
				addUser: (User username: each password: '1234') ].
	probabilities := #(1 2 4 9 8 0 7 2 8 3 8 7 6 8 1 4 9 7 5 4 9 1 8 9 7 7 1 8 1 4 6 9 2 7 5 5 4 7 1 6 2 6 2 9 2 4 4 3 9 6 1 3 4 6 1 4 9 3 6 5 6 8 1 0)
		readStream.
	example getUsers 
		do: [ :first | 
			example getUsers
				do: [ :second | 
					first ~= second
						ifTrue: [ probabilities next >= 4
								ifTrue: [ first follow: second.
									questions
										do: [ :each | 
											probabilities next >= 4
												ifTrue: [ first
														addQuestion:
															(Question
																title: each
																creator: first
																text: 'una descripcion a esa pregunta'
																topics: topics) ] ] ] ] ] ].
	^ example