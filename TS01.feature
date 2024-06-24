Feature: Obtener información de alojamientos

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero obtener la información de los alojamientos mediante una API
  Para mostrarla en la aplicación cuando se solicite

  Scenario: Obtener alojamientos disponibles
    Given que el endpoint "/alojamientos" está disponible
    When se envía una solicitud GET al endpoint "/alojamientos"
    Then se recibe una respuesta con status 200
    And los datos de los alojamientos se devuelven en el cuerpo de la respuesta

  Scenario: Alojamientos no disponibles
    Given que el endpoint "/alojamientos" está disponible
    When se envía una solicitud GET al endpoint "/alojamientos"
    And no hay alojamientos disponibles
    Then se recibe una respuesta con status 404
    And el mensaje "No hay alojamientos disponibles" se muestra en el cuerpo de la respuesta
