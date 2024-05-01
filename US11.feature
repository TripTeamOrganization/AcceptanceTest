Feature: US-11: Reservar vuelos

  Como usuario
  Quiero poder reservar vuelos en la aplicación
  Para poder planificar mi viaje de manera eficiente

  Scenario: Búsqueda de vuelo

    Given que el usuario desea viajar
    When acceda a la sección de vuelos en la aplicación
    Then podrá ver opciones de vuelos disponibles a su destino

  Scenario: Reserva de vuelo

    Given que el usuario desea reservar un vuelo
    When encuentre el vuelo adecuado y seleccione el que más se le acomode
    Then podrá reservar el vuelo para su destino
