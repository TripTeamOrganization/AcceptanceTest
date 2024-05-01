Feature: US-05: Buscar destinos por filtros

  Como usuario
  Debo poder buscar destinos aplicando diferentes filtros
  Para encontrar destinos que cumplan con mis preferencias y necesidades

  Scenario: Buscar destinos por tipo de destino
    Given Estoy en la unsa de las secciones de la página 
    When Selecciono el cuadro para "buscar" segun la sección
    And Hago clic en "Buscar"
    Then Debería flitrar una lista segun el nombre del destino 

  Scenario: Buscar destinos por rango de precios
    Given Estoy en la unsa de las secciones de la página 
    When Selecciono un rango de precios 
    And Fijo el precio deseado en el slide
    Then Debería ver una lista de destinos dentro de ese rango de precios
