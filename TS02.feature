Feature: Iniciar Sesión de Usuario

  As a developer working on the CodePace application
  I want to provide an API for users to log into their accounts
  So that they can access their personalized content and continue their technical interview preparation activities.

  Scenario: Iniciar sesión de usuario con credenciales válidas
    Given el usuario proporciona credenciales de inicio de sesión válidas
    When se envía una solicitud POST a /api/login con las credenciales del usuario
    Then la API responde con un código de estado 200 (OK)
    And el cuerpo de la respuesta contiene un token de autenticación válido para el usuario