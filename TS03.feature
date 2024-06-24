Feature: Obtener información de actividades

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero obtener la información de las actividades mediante una API
  Para mostrarla en la aplicación cuando se solicite

  Scenario: Obtener actividades disponibles
    Given que el endpoint "/actividades" está disponible
    When se envía una solicitud GET al endpoint "/actividades"
    Then se recibe una respuesta con status 200
    And los datos de las actividades se devuelven en el cuerpo de la respuesta

  Scenario: Actividades no disponibles
    Given que el endpoint "/actividades" está disponible
    When se envía una solicitud GET al endpoint "/actividades"
    And no hay actividades disponibles
    Then se recibe una respuesta con status 404
    And el mensaje "No hay actividades disponibles" se muestra en el cuerpo de la respuesta
