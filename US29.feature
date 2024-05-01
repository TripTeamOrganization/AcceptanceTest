
Feature: US-11: Planificar itinerario

  Como usuario registrado
  Debo poder planificar mi itinerario agregando reservas y actividades
  Para organizar mis viajes de forma clara y ordenada

  Scenario: Agregar una reserva de alojamiento al itinerario
    Given Soy un usuario registrado
    And Realizo una reserva de alojamiento para una fecha específica
    When Accedo a mi itinerario
    Then Debería ver la reserva de alojamiento en mi itinerario con la fecha correcta

  Scenario: Agregar un vuelo al itinerario
    Given Soy un usuario registrado
    And Realizo reserva de vuelo para una fecha específica
    When Accedo a mi itinerario
    Then Debería ver la reserva de vuelo en mi itinerario con la fecha correcta

  Scenario: Ver el itinerario completo
    Given Soy un usuario registrado
    When Accedo a mi itinerario
    Then Debería ver todas las reservas y actividades que he agregado
    And Debería verlas ordenadas por fecha

 

