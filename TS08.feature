Feature: Recuperar Preguntas de Entrevista

  As a developer working on the CodePace application
  I want to provide an API for users to retrieve technical interview questions
  So that users can prepare for technical interviews.

  Scenario: Recuperar preguntas de entrevista con un token de autenticación válido
    Given el usuario proporciona un token de autenticación válido
    When se envía una solicitud GET a /api/interview-questions con el token de autenticación del usuario
    Then la API responde con un código de estado 200 (OK)
    And el cuerpo de la respuesta contiene una lista de preguntas de entrevista técnica