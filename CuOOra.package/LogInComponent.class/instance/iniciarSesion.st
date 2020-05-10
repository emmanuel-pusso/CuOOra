callbacks
iniciarSesion
	"Debo chequear que el usuario ingresado en el call exista antes de hacer call del otro componente"

	(self model authentificationForUser: usuario withPassword: contraseña)
		ifNotNil: [ :it | self proceedWith: it ]