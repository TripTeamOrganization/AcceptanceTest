Feature: Borrar información de vuelos

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero borrar la información de los vuelos mediante una API
  Para que no se muestre en la aplicación cuando se solicite

  Scenario: Borrar vuelos existentes
    Given que el endpoint "/vuelos/{id}" está disponible
    When se envía una solicitud DELETE al endpoint "/vuelos/{id}"
    Then se recibe una respuesta con status 204
    And los datos del vuelo se borran

  Scenario: Vuelo no disponible para borrar
    Given que el endpoint "/vuelos/{id}" está disponible
    When se envía una solicitud DELETE al endpoint "/vuelos/{id}"
    And no existe el vuelo con esa id
    Then se recibe una respuesta con status 404
    And el mensaje "No hay vuelos con esa id" se muestra en el cuerpo de la respuesta
