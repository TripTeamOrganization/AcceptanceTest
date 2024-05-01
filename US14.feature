Feature: US-14: Planificar itinerario

  Como usuario
  Quiero poder planificar mi itinerario en la aplicación
  Para organizar mis actividades durante el viaje

  Scenario: Agregar actividades

    Given que el usuario está planificando su viaje
    When explore las opciones de actividades
    And seleccione las que desea realizar
    Then debería poder agregarlas a su itinerario con fecha y horario

  Scenario: Visualizar itinerario

    Given que el usuario ha agregado actividades a su itinerario
    When acceda a la planificación de su viaje
    Then podrá ver todas sus actividades organizadas por día y hora
