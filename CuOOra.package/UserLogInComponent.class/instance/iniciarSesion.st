callbacks
iniciarSesion
	"Debo chequear que el usuario ingresado en el call exista antes de hacer call del otro componente"
	(socialNetwork
		authentificationForUser: usuario
		withPassword: contraseña)
		ifNotNil: [ self call: UserHomeComponent new ]
		ifNil: [ self error: 'Usuario Invalido' ]