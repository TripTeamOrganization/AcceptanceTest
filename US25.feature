Feature: US-25: Suscripción a membresía premium

  Como usuario
  Quiero poder suscribirme a una membresía en la aplicación
  Para poder adquirir beneficios adicionales

  Scenario: Suscripción exitosa

    Given que el usuario está interesado en obtener beneficios adicionales en la aplicación
    When acceda a la sección de membresía premium
    And seleccione el plan premium
    Then podrá completar el proceso de suscripción

  Scenario: Error durante la suscripción

    Given que el usuario está interesado en obtener beneficios adicionales en la aplicación
    When intente suscribirse a la membresía premium
    And durante el proceso ingrese un método de pago incorrecto o haya un problema con el servicio de pago
    Then recibirá un mensaje de error indicando la naturaleza del problema
