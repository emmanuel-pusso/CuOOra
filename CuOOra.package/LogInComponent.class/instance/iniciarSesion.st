callbacks
iniciarSesion
	"Debo chequear que el usuario ingresado en el call exista antes de hacer call del otro componente"

	| socialNetwork |
	socialNetwork := self model.
	(socialNetwork
		authentificationForUser: usuario
		withPassword: contraseña)
		ifNotNil: [ :it | self proceedWith: it on: socialNetwork ]