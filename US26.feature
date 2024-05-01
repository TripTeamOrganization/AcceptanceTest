Feature: US-26: Eliminar cuenta

  Como usuario
  Quiero tener la opción de eliminar permanentemente mi cuenta y todos los datos asociados
  Para borrar la información de mi cuenta de la aplicación

  Scenario: Eliminar cuenta

    Given que el usuario ha decidido eliminar su cuenta de TripMate
    When acceda a la configuración de su cuenta y seleccione la opción para eliminarla
    Then recibirá una confirmación
    And, después de confirmar, su cuenta y todos los datos asociados serán eliminados permanentemente

  Scenario: Cancelar eliminación de cuenta

    Given que el usuario va a eliminar su cuenta
    When se muestre la confirmación de cancelar su cuenta
    And cancele la confirmación
    Then la cuenta del usuario no se eliminará
