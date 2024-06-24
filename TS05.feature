Feature: Registrar una nueva reserva

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero registrar una nueva reserva asociada a un usuario mediante una API
  Para que esté disponible para crear funcionalidades en mi aplicación

  Scenario: Añadir reserva nueva
    Given que el endpoint "/reservas" está disponible
    When se envía una solicitud POST al endpoint "/reservas" con los datos de la reserva
    Then se recibe una respuesta con status 201
    And se incluye en la respuesta un nuevo ID de reserva y los valores registrados

  Scenario: Intento de añadir una reserva ya existente
    Given que el endpoint "/reservas" está disponible
    When se envía una solicitud POST al endpoint "/reservas" con los datos de una reserva
    And ya existe una reserva para ese servicio con los mismos datos
    Then se recibe una respuesta con status 409
    And el mensaje "Una reserva a este servicio ya existe" se muestra en el cuerpo de la respuesta
