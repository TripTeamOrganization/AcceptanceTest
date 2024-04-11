Feature: US-27: Acceso a la sección de "Convenios"

    Como visitante del landing page
    Quiero visualizar los convenios que tiene TripMate
    Para conocer las distintas empresas asociadas   

  Scenario: Acceso a la sección de Convenios
    Given que el usuario se encuentra en la página de inicio
    When acceda a la sección "Convenios"
    Then visualizará las distintas empresas con las que trabaja TripMate

  Scenario: Sección no atractiva
    Given que el usuario está ingresando a la página de inicio desde otro dispositivo
    When revise la información y la encuentre desordenada y desagradable a la vista
    Then cierra nuestra página de inicio y continúa navegando por internet
