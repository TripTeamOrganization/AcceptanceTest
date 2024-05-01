Feature: US-04: Cambiar dirección de correo electrónico

  Como usuario
  Quiero poder cambiar la dirección de correo electrónico asociada a mi cuenta
  Para mantener mi información de contacto actualizada

  Scenario: Acceder a la configuración de la cuenta

    Given que el usuario está registrado y ha iniciado sesión en la aplicación
    When acceda a la configuración de su cuenta desde el menú de perfil
    Then podrá encontrar una opción para cambiar su dirección de correo electrónico

  Scenario: Verificación de la nueva dirección de correo electrónico

    Given que el usuario ha ingresado una nueva dirección de correo electrónico en la configuración de su cuenta
    When guarde los cambios y la aplicación solicite verificar la nueva dirección
    Then recibirá un correo electrónico de verificación en la nueva dirección
    And seguirá un proceso para confirmar el cambio
