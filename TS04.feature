Feature: Obtener información de restaurantes

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero obtener la información de los restaurantes mediante una API
  Para mostrarla en la aplicación cuando se solicite

  Scenario: Obtener restaurantes disponibles
    Given que el endpoint "/restaurantes" está disponible
    When se envía una solicitud GET al endpoint "/restaurantes"
    Then se recibe una respuesta con status 200
    And los datos de los restaurantes se devuelven en el cuerpo de la respuesta

  Scenario: Restaurantes no disponibles
    Given que el endpoint "/restaurantes" está disponible
    When se envía una solicitud GET al endpoint "/restaurantes"
    And no hay restaurantes disponibles
    Then se recibe una respuesta con status 404
    And el mensaje "No hay restaurantes disponibles" se muestra en el cuerpo de la respuesta
