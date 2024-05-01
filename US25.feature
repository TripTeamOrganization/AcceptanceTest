
Feature: US-08: Reservar alojamiento

  Como usuario registrado
  Debo poder reservar alojamiento para mis viajes
  Para asegurar mi lugar de estadía durante mis viajes

  Scenario: Reservar alojamiento con éxito
    Given Soy un usuario registrado
    And Estoy en la Sección de alojamientos
    When Selecciono un destino 
    And Hago clic en "selecionar"
    Then Debería poder reservarlo desde carrito de compras
    When Selecciono "Reservar" en el carrito de compras
    And Completo mis datos de pago
    Then Debería haberse guardado
