callbacks
accept
"el prbolema esta aca en que el newTopics es un string, colTopics una coleccion de string, y nosotros le tenmos que instanciar nuestra pregunta con un Topic"
	
	| colTopics question|
	"procesar String de topicos separados por coma (ver si hay otra manera)"
	colTopics := Set new.
	(newTopics substrings: ', ') do: [ :each | colTopics add: each ].
	self newTopics: colTopics.
	question:= Question title: newTitle  creator: self session user text:newText   topics: newTopics  .
	self answer