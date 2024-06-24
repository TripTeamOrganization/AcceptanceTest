Feature: Modificar información de vuelos

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero modificar la información de los vuelos mediante una API
  Para que se muestre actualizada en la aplicación cuando se solicite

  Scenario: Modificar vuelos existentes
    Given que el endpoint "/vuelos/{id}" está disponible
    When se envía una solicitud PUT al endpoint "/vuelos/{id}" con los datos actualizados del vuelo
    Then se recibe una respuesta con status 200
    And los datos del vuelo se actualizan correctamente

  Scenario: Vuelo no disponible para modificar
    Given que el endpoint "/vuelos/{id}" está disponible
    When se envía una solicitud PUT al endpoint "/vuelos/{id}" con los datos actualizados del vuelo
    And no existe el vuelo con esa id
    Then se recibe una respuesta con status 404
    And el mensaje "No hay vuelos con esa id" se muestra en el cuerpo de la respuesta
