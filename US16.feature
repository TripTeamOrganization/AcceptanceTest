Feature: US-16: Aplicación de códigos promocionales

  Como usuario
  Quiero tener la opción de ingresar códigos promocionales durante el proceso de pago
  Para obtener descuentos adicionales en los servicios ofrecidos

  Scenario: Ingresar código promocional

    Given que el usuario tiene un código promocional válido
    When esté en la página de pago durante el proceso de reserva
    Then debería poder ingresar el código promocional en un campo designado
    And ver el descuento reflejado en el precio total antes de confirmar la reserva

  Scenario: Código promocional utilizado

    Given que el usuario tiene un código promocional
    When ingrese el código
    And este no sea válido o haya sido utilizado
    Then se mostrará un mensaje de error “Este código no es válido o ya ha sido utilizado”
