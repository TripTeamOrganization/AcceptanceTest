Feature: Modificar información de alojamientos

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero modificar la información de los alojamientos mediante una API
  Para que se muestre actualizada en la aplicación

  Scenario: Modificar alojamientos existentes
    Given que el endpoint "/alojamientos/{id}" está disponible
    When se envía una solicitud PUT al endpoint "/alojamientos/{id}" con los datos actualizados del alojamiento
    Then se recibe una respuesta con status 200
    And los datos del alojamiento se actualizan correctamente

  Scenario: Alojamiento no disponible para modificar
    Given que el endpoint "/alojamientos/{id}" está disponible
    When se envía una solicitud PUT al endpoint "/alojamientos/{id}" con los datos actualizados del alojamiento
    And no existe el alojamiento con esa id
    Then se recibe una respuesta con status 404
    And el mensaje "No hay alojamientos con esa id" se muestra en el cuerpo de la respuesta
