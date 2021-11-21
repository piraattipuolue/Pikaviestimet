# Piraattipuoluen Matrix-kanaviin ja niiden hallintaan liittyvää materiaalia

Tämä nojaa vahvasti Elementin `/devtools` -komentoon, jossa enimmäkseen joko

* painetaan `explore room state` ("Huoneen tila")
* `send event` ("Lähetä mukautettu tapahtuma")
  1. painetaan alanurkasta `Event`, jotta se sanoo `State Event`
  2. kirjoitetaan tapahtuman tyyppi, jätetään tila-avain tyhjäksi
  3. kirjoitetaan (liitetään) tapahtuman sisältö
  4. painetaan "Lähetä"

