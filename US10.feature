Feature: US-10: Reservar alojamiento

  Como usuario
  Quiero poder reservar alojamiento en la aplicación
  Para asegurar mi hospedaje durante el viaje

  Scenario: Selección de fecha y tipo de alojamiento

    Given el usuario quiere reservar alojamiento para su viaje
    When seleccione las fechas de estadía y el tipo de alojamiento deseado
    Then se mostrará una lista de opciones de alojamiento disponibles

  Scenario: Alojamiento no disponible

    Given el usuario ha elegido un alojamiento
    When ingrese al apartado “Reservar”
    And el alojamiento no esté disponible
    Then se mostrará un mensaje de error “El alojamiento no está disponible”



