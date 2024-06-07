Feature: Eliminar Cuenta de Usuario

  As a developer working on the CodePace application
  I want to provide an API for users to permanently delete their accounts
  So that users can completely withdraw from our platform if they wish.

  Scenario: Eliminar cuenta de usuario con un token de autenticación válido y confirmación de eliminación
    Given el usuario confirma su intención de eliminar su cuenta
    When se envía una solicitud DELETE a /api/delete-account con el token de autenticación del usuario y la confirmación de eliminación
    Then la API responde con un código de estado 204 (No Content)
    And la cuenta de usuario se elimina permanentemente de nuestra base de datos