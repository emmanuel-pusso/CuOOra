instance creation
example
	| pedro diego juan example questionPedro questionDiego topics topic1 topic2 topic3 textoDePedro textoDeDiego emma questionEmma topicEmma1 topicEmma2 colTopicsEmma positiveVotePedro positiveVoteJuan negativeVoteDiego |
	
	example := self new.
	topics := Set new.
	topic1 := Topic name: 'OO1' description: 'una descripcion de OO1'.
	example addTopic: topic1.
	topic2 := Topic
		name: 'Test de unidad'
		description: 'una descripcion de Test de Unidad'.
	example addTopic: topic2.
	topic3 := Topic
		name: 'Smalltalk'
		description: 'una descripcion de Smalltalk'.
	example addTopic: topic3.
	pedro := User
		username: 'pedro@cuoora.com'
		password: 'pedro@cuoora.com'.
	diego := User
		username: 'diego@cuoora.com'
		password: 'diego@cuoora.com'.
	juan := User username: 'juan@cuoora.com' password: 'juan@cuoora.com'.
	example
		addUser: pedro;
		addUser: diego;
		addUser: juan.
	pedro addTopicOfInterest: topic1.

	"esto esta agregado para probar"
	diego addTopicOfInterest: topic2.

	"aca termina"
	pedro follow: juan.
	juan follow: diego.
	topics add: topic1.
	topics add: topic2.
	questionPedro := Question
		title: 'Para que sirve el metodo SetUp?'
		creator: pedro
		text: 'un texto'
		topics: topics.
	textoDeDiego := 'Sirve para instanciar los objetos que son evaluados por el testen un unico metodo y se ejecuta siempre antes de cada test'.
	Answer creator: diego text: textoDeDiego forQuestion: questionPedro.
	topics remove: topic2.
	topics add: topic3.
	questionDiego := Question
		title: 'Que significa #messageNotUnderstood? '
		creator: diego
		text: ''
		topics: topics.
	textoDePedro := 'Significa  que el objeto que recibio
	 el mensaje no encontro ningun metodo para ejecutar en respuesta'.
	Answer creator: pedro text: textoDePedro forQuestion: questionDiego.

	"DATOS PRUEBA EMMA"
	emma := User username: 'emma@cuoora.com' password: 'emma@cuoora.com'.
	topicEmma1 := Topic name: 'topicUno' description: 'topicUno'.
	topicEmma2 := Topic name: 'topicDos' description: 'topicDos'.
	colTopicsEmma := Set new.
	colTopicsEmma
		add: topicEmma1;
		add: topicEmma2.
	questionEmma := Question
		title: 'question uno'
		creator: emma
		text: 'question uno'
		topics: colTopicsEmma.
	emma addTopicOfInterest: topicEmma1.
	positiveVotePedro := Vote registerVotetoAnUser: pedro.
	positiveVoteJuan := Vote registerVotetoAnUser: juan.
	negativeVoteDiego := Vote registerVotetoAnUser: diego.
	questionEmma addLike: positiveVotePedro; addLike: positiveVoteJuan.
	questionEmma addDisLike: negativeVoteDiego.
	example addUser: emma.
	example addTopic: topicEmma1; addTopic: topicEmma2.
	
	^ example