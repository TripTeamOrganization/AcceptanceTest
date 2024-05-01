Feature: US-06: Ver alojamientos
  Como usuario
  Quiero ver todos los alojamientos disponibles en la aplicación
  Para poder planificar mi viaje y mi itinerario

  Scenario: Ver alojamientos
    Given el usuario quiere ver alojamientos disponibles
    When ingrese al apartado de alojamientos
    Then podrá ver el nombre, la dirección, una breve descripción y el precio de todos los alojamientos disponibles

  Scenario: Ver alojamientos por precio
    Given el usuario quiere ver alojamientos disponibles en un rango de precio
    When acomode el rango de precio en el slider de precio
    Then podrá ver el nombre, la dirección, una breve descripción y el precio de todos los alojamientos que se encuentren en el rango de precio ingresado
