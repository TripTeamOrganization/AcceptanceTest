Feature: Verificar Correo Electrónico

  As a developer working on the CodePace application
  I want to provide an API for users to verify their email address after registration
  So that we can ensure the authenticity of user accounts on our platform.

  Scenario: Verificar correo electrónico con un token de verificación válido
    Given el usuario proporciona un token de verificación válido
    When se envía una solicitud POST a /api/verify-email con el token de verificación del usuario
    Then la API responde con un código de estado 200 (OK)
    And la cuenta de usuario se marca como verificada en nuestra base de datos