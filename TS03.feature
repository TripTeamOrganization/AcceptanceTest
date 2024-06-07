Feature: Obtener Detalles del Usuario

  As a developer working on the CodePace application
  I want to provide an API for users to retrieve their profile details
  So that they can view and update their personal information when necessary.

  Scenario: Obtener detalles del perfil del usuario con un token válido
    Given el usuario proporciona un token de autenticación válido
    When se envía una solicitud GET a /api/profile con el token de autenticación
    Then la API responde con un código de estado 200 (OK)
    And el cuerpo de la respuesta contiene los detalles del perfil del usuario