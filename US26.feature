Feature: US-26: Eliminar cuenta en TripMate

    Como usuario de TripMate,
    quiero poder eliminar mi cuenta
    para que mis datos sean eliminados permanentemente.

  Scenario: Scenario name: Eliminar cuenta
    Given que el usuario ha decidido eliminar su cuenta de TripMate
    When acceda a la configuración de su cuenta y seleccione la opción para eliminarla
    Then recibirá una confirmación
    And, después de confirmar, su cuenta y todos los datos asociados serán eliminados permanentemente

  Scenario: Cancelar eliminación de cuenta
    Given que el usuario va a eliminar su cuenta
    When se muestre la confirmación de cancelar su cuenta
    And cancele la confirmación
    Then la cuenta del usuario no se eliminará

