Feature: US-17: Contactar al soporte

  Como usuario
  Quiero poder contactar al equipo de soporte de la aplicación
  Para obtener ayuda con problemas técnicos

  Scenario: Envío de consulta

    Given que el usuario tiene una pregunta sobre el funcionamiento de la aplicación o desea realizar un reclamo
    When acceda a la sección de soporte
    And complete el formulario de contacto
    Then podrá enviar su consulta al soporte

  Scenario: Respuesta del soporte

    Given que el usuario ha enviado una consulta al soporte
    When reciba una respuesta
    Then podrá recibir asistencia a su problema
