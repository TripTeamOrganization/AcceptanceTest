Feature: Borrar información de actividades

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero borrar la información de las actividades mediante una API
  Para que no se muestre en la aplicación cuando se solicite

  Scenario: Borrar actividad existente
    Given que el endpoint "/actividades/{id}" está disponible
    When se envía una solicitud DELETE al endpoint "/actividades/{id}"
    Then se recibe una respuesta con status 204
    And los datos de la actividad se borran

  Scenario: Actividad no disponible para borrar
    Given que el endpoint "/actividades/{id}" está disponible
    When se envía una solicitud DELETE al endpoint "/actividades/{id}"
    And no existe la actividad con esa id
    Then se recibe una respuesta con status 404
    And el mensaje "No hay actividades con esa id" se muestra en el cuerpo de la respuesta
