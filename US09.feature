Feature: US-09: Ver restaurantes

  Como usuario
  Quiero ver todos los restaurantes disponibles en la aplicación
  Para poder planificar mi viaje y mi itinerario

  Scenario: Ver restaurantes

    Given el usuario quiere ver todos los restaurantes
    When ingrese al apartado de restaurantes
    Then podrá ver todos los restaurantes disponibles incluyendo su precio y su ubicación

  Scenario: Ver restaurantes por precio

    Given el usuario quiere ver restaurantes disponibles en un rango de precio
    When acomode el rango de precio en el slider de precio
    Then podrá ver el nombre, la dirección, una breve descripción y el precio de todos los restaurantes que se encuentren en el rango de precio ingresado

  Scenario: Ver restaurantes por horario de apertura

    Given el usuario quiere ver restaurantes disponibles en un horario específico
    When ingrese el horario que desee
    Then podrá ver el nombre, la dirección, una breve descripción y el precio de todos los restaurantes que están disponibles en ese horario


