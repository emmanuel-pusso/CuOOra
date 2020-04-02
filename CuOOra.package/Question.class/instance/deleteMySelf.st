public
deleteMySelf
	"deleteMySelf  implica borrarme de la lista del usuario, del topico y eliminar cada una de mis respuestas"
	user deleteAQuestion: self.
	topics do: [ :each | each deleteQuestion: self ].
	self getAnswers  
		do: [ :each | 
			each deleteMySelf.
			answers remove: each
			].

	