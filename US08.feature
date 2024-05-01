Feature: US-08: Ver actividades

  Como usuario
  Quiero ver todas las actividades disponibles en la aplicación
  Para poder planificar mi viaje y mi itinerario

  Scenario: Ver actividades

    Given el usuario quiere ver todas las actividades para planificar su itinerario
    When ingrese al apartado de actividades
    Then podrá ver todas las actividades disponibles con su dirección, una breve descripción y su precio por persona

  Scenario: Ver actividades por precio

    Given el usuario quiere ver actividades disponibles en un rango de precio
    When acomode el rango de precio en el slider de precio
    Then podrá ver el nombre, la dirección, una breve descripción y el precio de todas las actividades que se encuentren en el rango de precio ingresado

  Scenario: Ver actividades por horario de apertura

    Given el usuario quiere ver actividades disponibles en un horario específico
    When ingrese el horario que desee
    Then podrá ver el nombre, la dirección, una breve descripción y el precio de todas las actividades que están disponibles en ese horario


