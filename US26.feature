Feature: US-02: Inicio de sesión

  Como usuario registrado
  Debo poder iniciar sesión en la aplicación
  Para acceder a mi cuenta y a todas las funcionalidades del sistema

  Scenario: Iniciar sesión con credenciales válidas
    Given Soy un usuario registrado
    And Estoy en la página de inicio de sesión
    When Ingreso mi nombre de usuario o correo electrónico y mi contraseña correctos
    And Hago clic en "Iniciar sesión"
    Then Debería ser redirigido al panel principal del aplicativo
    

  Scenario: Intentar iniciar sesión con credenciales incorrectas
    Given Estoy en la página de inicio de sesión
    When Ingreso un nombre de usuario o correo electrónico incorrecto
    And Ingreso una contraseña incorrecta
    And Hago clic en "Iniciar sesión"
    Then Debería ver un mensaje de error indicando que las credenciales son incorrectas
    And Debería permanecer en la página de inicio de sesión


