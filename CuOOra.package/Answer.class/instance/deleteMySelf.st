public
deleteMySelf
	"borrar una respuesta implica:
	 - eliminarla de la coleccion de respuestas del usuario
	 - borrar la respuesta de la pregunta"

	user deleteAnAnswer: self.
	question removeAnswer: self