Feature: US-23: Acceso a la sección “Testimonios”

    Como visitante del landing page
    Debo poder ver testimonios y experiencias de otros usuarios
    Para conocer la opinión del público sobre TripMate

  Scenario: Ver testimonios de otros usuarios
    Given Soy un visitante del landing page
    When Accedo a la sección "Testimonios"
    Then Debería poder ver testimonios y experiencias de otros usuarios sobre TripMate

  Scenario: Conocer la opinión del público
    Given Soy un visitante del landing page
    When Navego hacia la sección "Testimonios"
    Then Debería poder formarme una opinión sobre TripMate a partir de los testimonios de otros usuarios