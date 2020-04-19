functionalities
authentificationForUser: anUserName withPassword: aPassword
	"Seleccion el usuario correspondiente a los datos intgrados como parametros, si los datos ingresados no son validos  devuelve nil"
	
^ users
		detect: [ :each | each validUserWithName: anUserName andPassword: aPassword ]
		ifNone: [ nil ]