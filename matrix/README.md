<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Piraattipuoluen Matrix-kanaviin ja niiden hallintaan liittyvää materiaalia](#piraattipuoluen-matrix-kanaviin-ja-niiden-hallintaan-liittyv%C3%A4%C3%A4-materiaalia)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Piraattipuoluen Matrix-kanaviin ja niiden hallintaan liittyvää materiaalia

Tämä nojaa vahvasti Elementin `/devtools` -komentoon, jossa enimmäkseen joko

- painetaan `explore room state` ("Huoneen tila")
- `send event` ("Lähetä mukautettu tapahtuma")
  1. painetaan alanurkasta `Event`, jotta se sanoo `State Event`
  2. kirjoitetaan tapahtuman tyyppi, jätetään tila-avain tyhjäksi
  3. kirjoitetaan (liitetään) tapahtuman sisältö
  4. painetaan "Lähetä"
