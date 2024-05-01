Feature: US-01: Registro de usuario

  Como usuario nuevo
  Quiero poder registrarme en TripMate
  Para poder acceder a todas las funcionalidades de la aplicación

  Scenario: Registro exitoso

    Given que el usuario es nuevo
    When acceda a la página de registro
    And complete todos los campos requeridos
    Then debería recibir una confirmación de registro

  Scenario: Registro fallido

    Given que el usuario completó el formulario de registro
    When ingrese información inválida o incompleta
    Then debería recibir un mensaje de error que indique los campos a corregir
