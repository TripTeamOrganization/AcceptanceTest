Feature: US-24: Acceder desde cualquier dispositivo a la landing page

    Como visitante del landing page
    Quiero poder acceder al sitio web desde diferentes dispositivos
    Para poder ingresr al sitio web desde cualquier dispositivo

  Scenario: Accesibilidad desde diferentes dispositivos
    Given Soy un visitante del landing page
    When Acceda al sitio web desde un dispositivo diferente (móvil, tablet, PC)
    Then Debería poder visualizar la pagina correctamente en cualquier dispositivo

  Scenario: Acceso fácil desde cualquier lugar
    Given Soy un visitante del landing page
    When Intente acceder al sitio web desde mi dispositivo habitual
    Then Debería poder ingresar a la pagina de TripMate desde cualquier lugar y dispositivo
