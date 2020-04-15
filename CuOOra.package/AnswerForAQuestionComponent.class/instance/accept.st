callbacks
accept
	| answer |
	answer := Answer
		creator: self session user
		text: newText
		forQuestion: interaction.
	"LA PREGUNTA LA CREA, REVISAR COMO ESTÁ RETORNANDO"
	self show: (AnswerListComponent newWithQuestion:interaction).
		