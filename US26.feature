Feature: US-26: Visualizar features de la aplicación
  Como visitante del landing page
  Debo poder visualizar todos las funcionalidades y servicios que brinda TripMate
  Para entender el uso de la aplicación

  Scenario: Ver todas las funcionalidades y servicios
    Given Soy un visitante del landing page
    When Accedo al sitio web de TripMate
    Then Debería ver todas las funcionalidades y servicios que ofrece TripMate

  Scenario: Entender el uso de la aplicación
    Given Soy un visitante del landing page
    When Exploro las secciones de la página
    Then Debería comprender cómo utilizar la aplicación TripMate
