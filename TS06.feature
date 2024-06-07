Feature: Recuperar Contraseña Olvidada

  As a developer working on the CodePace application
  I want to provide an API for users to reset their password if they forget it
  So that users can regain access to their accounts if they forget their password.

  Scenario: Recuperar contraseña olvidada con un correo electrónico registrado
    Given el usuario proporciona su correo electrónico registrado
    When se envía una solicitud POST a /api/reset-password con el correo electrónico del usuario
    Then la API responde con un código de estado 200 (OK)
    And se envía un correo electrónico al usuario con un enlace para restablecer su contraseña