Feature: Borrar información de alojamientos

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero borrar la información de los alojamientos mediante una API
  Para que no se muestre en la aplicación

  Scenario: Borrar alojamientos existentes
    Given que el endpoint "/alojamientos/{id}" está disponible
    When se envía una solicitud DELETE al endpoint "/alojamientos/{id}"
    Then se recibe una respuesta con status 204
    And los datos del alojamiento se borran

  Scenario: Alojamiento no disponible para borrar
    Given que el endpoint "/alojamientos/{id}" está disponible
    When se envía una solicitud DELETE al endpoint "/alojamientos/{id}"
    And no existe el alojamiento con esa id
    Then se recibe una respuesta con status 404
    And el mensaje "No hay alojamientos con esa id" se muestra en el cuerpo de la respuesta
