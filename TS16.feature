Feature: Modificar información de actividades

  Como desarrollador que trabaja en la aplicación TripMate
  Quiero modificar la información de las actividades mediante una API
  Para que se muestre actualizada en la aplicación cuando se solicite

  Scenario: Modificar actividades existentes
    Given que el endpoint "/actividades/{id}" está disponible
    When se envía una solicitud PUT al endpoint "/actividades/{id}" con los datos actualizados de la actividad
    Then se recibe una respuesta con status 200
    And los datos de la actividad se actualizan correctamente

  Scenario: Actividad no disponible para modificar
    Given que el endpoint "/actividades/{id}" está disponible
    When se envía una solicitud PUT al endpoint "/actividades/{id}" con los datos actualizados de la actividad
    And no existe la actividad con esa id
    Then se recibe una respuesta con status 404
    And el mensaje "No hay actividades con esa id" se muestra en el cuerpo de la respuesta
