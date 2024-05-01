Feature: US-06: Ver alojamientos, vuelos, actividades y restaurantes disponibles

  Como usuario
  Debo poder ver opciones de alojamientos, vuelos, actividades y restaurantes
  Para planificar mi viaje y decidir mis actividades durante mi estancia

  Scenario: Acceder a las opciones desde el toolbar
    Given Estoy en la página principal de la aplicación
    When Miro la barra de herramientas
    Then Debería ver opciones para "Alojamientos", "Vuelos", "Actividades" y "Restaurantes"

  Scenario: Ver alojamientos disponibles
    Given Estoy en la página principal de la aplicación
    And Hago clic en la opción "Alojamientos" en el toolbar
    When Se me muestra la página de alojamientos
    Then Debería ver una lista de alojamientos disponibles

  Scenario: Ver vuelos disponibles
    Given Estoy en la página principal de la aplicación
    And Hago clic en la opción "Vuelos" en el toolbar
    When Se me muestra la página de vuelos
    Then Debería ver una lista de vuelos disponibles

  Scenario: Ver actividades disponibles
    Given Estoy en la página principal de la aplicación
    And Hago clic en la opción "Actividades" en el toolbar
    When Se me muestra la página de actividades
    Then Debería ver una lista de actividades disponibles para mi destino

  Scenario: Ver restaurantes disponibles
    Given Estoy en la página principal de la aplicación
    And Hago clic en la opción "Restaurantes" en el toolbar
    When Se me muestra la página de restaurantes
    Then Debería ver una lista de restaurantes disponibles para mi destino
