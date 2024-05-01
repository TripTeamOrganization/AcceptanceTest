Feature: US-07: Ver vuelos

  Como usuario
  ver todos vuelos disponibles en la aplicación
  poder planificar mi viaje y mi itinerario

  Scenario: Ver vuelos

    Given el usuario quiere ver todos los vuelos disponibles
    When ingrese al apartado de vuelos
    Then podrá ver todos los vuelos disponibles incluyendo su precio y el destino

  Scenario: Ver vuelos por precio

    Given el usuario quiere ver vuelos disponibles en un rango de precio
    When acomode el rango de precio en el slider de precio
    Then podrá ver los vuelos disponibles en el rango de precio ingresado

  Scenario: Ver vuelos por horario

    Given el usuario quiere ver vuelos disponibles en un horario específico
    When ingrese el horario que desee
    Then podrá ver los vuelos disponibles en ese horario


