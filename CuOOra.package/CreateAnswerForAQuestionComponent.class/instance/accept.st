callbacks
accept
	| answer |
	answer := Answer
		creator: self session user
		text: newText
		forQuestion: question.
	"PENDIENTE VER DONDE RETORNA"