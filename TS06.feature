Feature: Obtener información de reservas por usuario

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero obtener la información de las reservas por usuario mediante una API
  Para mostrarla en la aplicación cuando se solicite

  Scenario: Obtener reserva existente
    Given que el endpoint "/reservas" está disponible
    When se envía una solicitud GET al endpoint "/reservas" con el identificador de la reserva
    Then se recibe una respuesta con status 200
    And los datos de la reserva se devuelven en el cuerpo de la respuesta

  Scenario: Obtener reserva no disponible
    Given que el endpoint "/reservas" está disponible
    When se envía una solicitud GET al endpoint "/reservas" con el identificador de la reserva
    And el identificador no existe
    Then se recibe una respuesta con status 404
    And el mensaje "No existe una reserva con este identificador" se muestra en el cuerpo de la respuesta
