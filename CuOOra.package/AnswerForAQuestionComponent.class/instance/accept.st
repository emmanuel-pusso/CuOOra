callbacks
accept
	| answer |
	answer := Answer
		creator: self session user
		text: newText
		forQuestion: interaction.
	"PENDIENTE VER DONDE RETORNA"