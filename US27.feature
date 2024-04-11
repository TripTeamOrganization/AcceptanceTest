Feature: US-27: Sección “Acerca de nosotros”

Scenario: Como visitante del landing page
  Given que soy un visitante del landing page
  When visualizo la sección "Acerca de Nosotros"
  Then puedo conocer al equipo de TripMate y su propósito

Scenario: Como visitante del landing page en una tableta
  Given que soy un visitante del landing page
  When visualizo la sección "Acerca de Nosotros" en una tableta
  Then puedo conocer al equipo de TripMate y su propósito de manera óptima en una tableta
