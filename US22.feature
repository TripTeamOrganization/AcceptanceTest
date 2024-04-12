Feature: US-21: Acceso a la sección Acerca

    Como visitante del landing page
    Quiero acceder a la sección acerca de TripMate
    Para obtener información sobre la empresa y su misión

  Scenario: Acceso a la sección acerca
    Given que el usuario se encuentra en la página de inicio
    When haga clic en el enlace acerca
    Then será redirigido a la sección acerca de TripMate

  Scenario: Contenido relevante en acerca
    Given que el usuario está en la página acerca de TripMate
    When revise el contenido de la página
    Then encontrará información su historia, su misión e integrantes del proyecto,
