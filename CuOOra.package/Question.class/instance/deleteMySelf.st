public
deleteMySelf
	"deleteMySelf  implica borrarme de la lista del usuario, del topico y eliminar cada una de mis respuestas"

	answers do: [ :each | each deleteMySelf ].
	user deleteAQuestion: self.
	topics do: [:each | each deleteAQuestion: self]