Feature: Obtener información de vuelos

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero obtener la información de los vuelos mediante una API
  Para mostrarla en la aplicación cuando se solicite

  Scenario: Obtener vuelos disponibles
    Given que el endpoint "/vuelos" está disponible
    When se envía una solicitud GET al endpoint "/vuelos"
    Then se recibe una respuesta con status 200
    And los datos de los vuelos se devuelven en el cuerpo de la respuesta

  Scenario: Vuelos no disponibles
    Given que el endpoint "/vuelos" está disponible
    When se envía una solicitud GET al endpoint "/vuelos"
    And no hay vuelos disponibles
    Then se recibe una respuesta con status 404
    And el mensaje "No hay vuelos disponibles" se muestra en el cuerpo de la respuesta
