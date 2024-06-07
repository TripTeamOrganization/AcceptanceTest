Feature: Registrar Usuario

  As a developer working on the CodePace application
  I want to be able to register a new user via an API
  So that users can sign up for our platform and access our technical interview preparation resources.

  Scenario: Registrar un nuevo usuario con información válida
    Given el usuario proporciona información de registro válida
    When se envía una solicitud POST a /api/users con los detalles del usuario
    Then la API responde con un código de estado 201 (Created)
    And el cuerpo de la respuesta contiene los detalles del usuario recién registrado