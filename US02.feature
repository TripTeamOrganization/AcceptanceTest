Feature: US-02: Inicio de sesión

  Como usuario registrado
  Quiero poder iniciar sesión en la aplicación
  Para acceder a mi cuenta

  Scenario: Inicio de sesión exitoso
    Given el usuario se ha registrado
    When ingrese su correo electrónico y contraseña
    And Hago clic en "Iniciar sesión"
    Then debería poder acceder a mi cuenta
    
  Scenario: Inicio de sesión fallido
    Given el usuario se ha registrado
    When ingrese una credencial incorrecta
    And Hago clic en "Iniciar sesión"
    Then Debería ver un mensaje de error indicando que las credenciales son incorrectas
   


