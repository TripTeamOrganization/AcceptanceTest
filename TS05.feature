Feature: Cerrar Sesión de Usuario

  As a developer working on the CodePace application
  I want to provide an API for users to log out of their accounts
  So that their data remains secure and private when they finish their session on the platform.

  Scenario: Cerrar sesión de usuario con un token válido
    Given el usuario proporciona un token de autenticación válido
    When se envía una solicitud DELETE a /api/logout con el token de autenticación
    Then la API responde con un código de estado 204 (No Content)
    And el usuario es desconectado exitosamente de su sesión en la plataforma