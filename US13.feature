Feature: US-13: Reservar restaurantes

  Como usuario
  Quiero poder reservar restaurantes en la aplicación
  Para poder planificar mi viaje de manera eficiente

  Scenario: Búsqueda de restaurante

    Given que el usuario desea reservar un restaurante
    When acceda a la sección de restaurantes en la aplicación
    Then podrá ver opciones de restaurantes disponibles

  Scenario: Reserva de restaurantes

    Given que el usuario desea reservar un restaurante
    When encuentre el restaurante adecuado según sus preferencias
    Then podrá reservar el restaurante para su viaje
