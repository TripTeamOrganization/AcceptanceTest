Feature: Registrar un nuevo itinerario

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero registrar un nuevo itinerario asociado a un usuario mediante una API
  Para que esté disponible para crear funcionalidades en mi aplicación

  Scenario: Añadir itinerario nuevo
    Given que el endpoint "/itinerarios" está disponible
    When se envía una solicitud POST al endpoint "/itinerarios" con los datos del itinerario
    Then se recibe una respuesta con status 201
    And se incluye en la respuesta un nuevo ID de itinerario y los valores registrados

  Scenario: Intento de añadir un itinerario ya existente
    Given que el endpoint "/itinerarios" está disponible
    When se envía una solicitud POST al endpoint "/itinerarios" con los datos del itinerario
    And un itinerario con ese nombre ya está registrado
    Then se recibe una respuesta con status 409
    And el mensaje "Un itinerario con estos datos ya existe" se muestra en el cuerpo de la respuesta
