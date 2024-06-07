Feature: Registrar Actividad de Usuario

  As a developer working on the CodePace application
  I want to provide an API to log user activity on the platform
  So that we can analyze user engagement and improve the user experience.

  Scenario: Registrar actividad de usuario con detalles de la acción y un token de autenticación válido
    Given se realiza una acción por parte del usuario en la plataforma
    When se envía una solicitud POST a /api/activity-log con los detalles de la acción y el token de autenticación del usuario
    Then la API responde con un código de estado 201 (Created)
    And la actividad del usuario se registra correctamente en nuestra base de datos