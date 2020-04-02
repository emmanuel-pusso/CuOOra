public
deleteMySelf
	"deleteMySelf  implica borrarme de la lista del usuario, del topico y eliminar cada una de mis respuestas"
	"hay que re implementar, seguramente no funcione"
	user deleteAQuestion: self.
	topics do: [:each | each deleteAQuestion: self].
	answers do: [ :each | each deleteMySelf ].