Feature: Obtener información sobre itinerarios de viaje por usuario

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero obtener la información sobre itinerarios de viaje por usuario mediante una API
  Para mostrarla en la aplicación cuando se solicite

  Scenario: Obtener itinerario existente
    Given que el endpoint "/itinerarios" está disponible
    When se envía una solicitud GET al endpoint "/itinerarios" con el identificador del itinerario
    Then se recibe una respuesta con status 200
    And los datos del itinerario se devuelven en el cuerpo de la respuesta

  Scenario: Obtener itinerario no disponible
    Given que el endpoint "/itinerarios" está disponible
    When se envía una solicitud GET al endpoint "/itinerarios" con el identificador del itinerario
    And el identificador no existe
    Then se recibe una respuesta con status 404
    And el mensaje "No existe un itinerario con este identificador" se muestra en el cuerpo de la respuesta
