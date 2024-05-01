Feature: US-15: Realizar pago

  Como usuario
  Quiero poder realizar los pagos dentro de la aplicación
  Para poder terminar de planificar el viaje

  Scenario: Pago exitoso

    Given que el usuario ha organizado su viaje
    When quiera realizar el pago
    Then la aplicación lo redireccionará a la sección de pago
    And podrá pagar el total de su viaje

  Scenario: Pago fallido

    Given que el usuario ha organizado su viaje
    And desea realizar el pago
    When ingrese credenciales incorrectas en la sección de pago
    Then la aplicación mostrará un mensaje de error
    And le permitirá volver a ingresar sus datos
