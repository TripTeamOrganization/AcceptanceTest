Feature: US-12: Reservar actividades

  Como usuario
  Quiero poder reservar actividades en la aplicación
  Para poder planificar mi viaje de manera eficiente

  Scenario: Búsqueda de actividades

    Given que el usuario desea reservar actividades
    When acceda a la sección de actividades en la aplicación
    Then podrá ver opciones de actividades disponibles para reservar

  Scenario: Reserva de actividad

    Given que el usuario desea reservar una actividad
    When encuentre la actividad deseada en base a sus preferencias
    Then podrá reservar la actividad para su viaje
