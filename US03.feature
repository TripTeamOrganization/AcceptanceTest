Feature: US-03: Recuperación de contraseña

  Como usuario registrado
  Quiero tener la opción de recuperación de contraseña
  Para poder acceder a mi cuenta sin problemas

  Scenario: Solicitud de recuperación de contraseña exitosa

    Given que el usuario ha olvidado su contraseña
    When acceda a la opción de recuperar contraseña
    And coloque el correo asociado a su cuenta
    Then recibirá un correo electrónico con instrucciones para recuperar su contraseña

  Scenario: Solicitud de recuperación de contraseña fallida

    Given que el usuario ha olvidado su contraseña
    When accede a la opción de recuperar contraseña
    And coloque un correo no asociado a su cuenta
    Then mostrará un mensaje de error
    And deberá ingresar su correo nuevamente
