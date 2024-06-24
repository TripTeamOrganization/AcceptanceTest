Feature: Identity and Access Management (IAM) - Obtener información de perfil de usuario

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero obtener información de perfil de usuario mediante una API
  Para mostrarla en la aplicación cuando se solicite

  Scenario: Obtener información de perfil de usuario existente
    Given que el endpoint "/users/{id}" está disponible
    When se envía una solicitud GET al endpoint "/users/{id}" con el identificador del usuario y un token de autenticación válido
    Then se recibe una respuesta con status 200
    And los datos del perfil del usuario se devuelven en el cuerpo de la respuesta

  Scenario: Usuario no encontrado
    Given que el endpoint "/users/{id}" está disponible
    When se envía una solicitud GET al endpoint "/users/{id}" con el identificador del usuario y un token de autenticación válido
    And el identificador del usuario no existe
    Then se recibe una respuesta con status 404
    And el mensaje "Usuario no encontrado" se muestra en el cuerpo de la respuesta
