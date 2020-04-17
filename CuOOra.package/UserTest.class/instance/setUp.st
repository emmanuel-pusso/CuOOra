set-up
setUp
	| colTopics colTopics2 colTopics3 |
	colTopics := Set new.
	colTopics2 := Set new.
	colTopics3 := Set new.

	"creat users"
	user1 := User username: 'emma.pusso' password: '1qaz2wsx'.
	user2 := User username: 'agus.diaz' password: '3edc4rfv'.
	user3 := User username: 'diego.diaz' password: '5tgb6yhn'.

	"create topics of interest"
	sportTopic := Topic
		name: 'Deporte'
		description: 'algo relacionado al deporte'.
	developmentTopic := Topic
		name: 'Programacion'
		description: 'smalltalk practicas'.
	travelTopic:= Topic
		name: 'Viajes'
		description: 'Destinos turísticos del mundo'.

	"add topics to collection"
	colTopics add: developmentTopic.
	colTopics3 add: travelTopic.

	"creo pregunta para User2 (1), y creo preguntas para User3 (2)"
	question := Question
		title: 'Como hacer los test?'
		creator: user2
		text: 'alguien me explica como se hacen'
		topics: colTopics.
		
	question2 := Question
		title: 'Como remaar?'
		creator: user3
		text: 'probando nuevos preguntas'
		topics: colTopics2.
		
	question3 := Question
		title: 'Cual es la capital de España?'
		creator: user3
		text: 'probando nuevos preguntas'
		topics: colTopics.
		
	question4:= 	Question
		title: 'Donde se ubican las cataratas del Iguazú?'
		creator: user2
		text: 'probando nuevos preguntas'
		topics: colTopics3.
		
	"Creo Respuesta para User2, a Preguntas del User3"
	answer1ToQ2:= Answer creator: user2  text: 'answer1 to Q2' forQuestion: question2.
	answer2ToQ2:= Answer creator: user2  text: 'answer2 to Q2' forQuestion: question2.
	answer1ToQ3:= Answer creator: user2  text: 'answer2 to Q3' forQuestion: question3. 