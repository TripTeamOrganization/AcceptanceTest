Feature: Actualizar Detalles del Usuario

  As a developer working on the CodePace application
  I want to provide an API for users to update their profile information
  So that they can keep their personal data up-to-date on our platform.

  Scenario: Actualizar detalles del perfil del usuario con un token válido
    Given el usuario proporciona un token de autenticación válido y los nuevos detalles del perfil
    When se envía una solicitud PUT a /api/profile con el token de autenticación y los nuevos detalles
    Then la API responde con un código de estado 200 (OK)
    And el cuerpo de la respuesta contiene los detalles actualizados del perfil del usuario