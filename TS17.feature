Feature: Modificar información de restaurantes

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero modificar la información de los restaurantes mediante una API
  Para que se muestre actualizada en la aplicación cuando se solicite

  Scenario: Modificar restaurantes existentes
    Given que el endpoint "/restaurantes/{id}" está disponible
    When se envía una solicitud PUT al endpoint "/restaurantes/{id}" con los datos actualizados del restaurante
    Then se recibe una respuesta con status 200
    And los datos del restaurante se actualizan correctamente

  Scenario: Restaurante no disponible para modificar
    Given que el endpoint "/restaurantes/{id}" está disponible
    When se envía una solicitud PUT al endpoint "/restaurantes/{id}" con los datos actualizados del restaurante
    And no existe el restaurante con esa id
    Then se recibe una respuesta con status 404
    And el mensaje "No hay restaurantes con esa id" se muestra en el cuerpo de la respuesta
