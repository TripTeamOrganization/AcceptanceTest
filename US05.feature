Feature: US-05: Búsqueda por filtros

  Como usuario
  Quiero buscar vuelos, alojamientos, restaurantes y actividades utilizando filtros
  Para explorar opciones según mis intereses y preferencias

  Scenario: Filtrar por precio
    Given el usuario quiere buscar un vuelo, alojamiento, restaurante o actividad en un rango de precio 
    When utilice el slider de precio en la sección
    Then debería ver una variedad de opciones según el precio ingresado

  Scenario: Filtro por horario
    Given el usuario quiere seleccionar un restaurante, una actividad o un vuelo
    When realice la búsqueda por filtro de horario de apertura
    Then debería ver las opciones según el horario ingresado
