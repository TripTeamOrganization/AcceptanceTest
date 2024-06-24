Feature: Borrar información de restaurantes

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero borrar la información de los restaurantes mediante una API
  Para que no se muestre en la aplicación cuando se solicite

  Scenario: Borrar restaurantes existentes
    Given que el endpoint "/restaurantes/{id}" está disponible
    When se envía una solicitud DELETE al endpoint "/restaurantes/{id}"
    Then se recibe una respuesta con status 204
    And los datos del restaurante se borran

  Scenario: Restaurante no disponible para borrar
    Given que el endpoint "/restaurantes/{id}" está disponible
    When se envía una solicitud DELETE al endpoint "/restaurantes/{id}"
    And no existe el restaurante con esa id
    Then se recibe una respuesta con status 404
    And el mensaje "No hay restaurantes con esa id" se muestra en el cuerpo de la respuesta
