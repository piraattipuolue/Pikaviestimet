<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [`m.room.power_levels`](#mroompower_levels)
  - [Katso myös](#katso-my%C3%B6s)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# `m.room.power_levels`

Tämä tapahtuma (`/devtools`, tutki huoneen tilaa, `m.room.power_levels`
määrittää kuka saa tehdä mitä, ja millä tunnuksilla on voimaa. Toistaiseksi
huonekohtainen, joten paljon copy-pastea.

Perustuu
https://gitea.blesmrt.net/mikaela/gist/src/branch/master/matrix/m.room.power_levels/README.md#reasonable-version

```json
{
  "ban": 50,
  "events": {
    "im.vector.modular.widgets": 50,
    "m.room.avatar": 50,
    "m.room.canonical_alias": 13,
    "m.room.encryption": 100,
    "m.room.history_visibility": 99,
    "m.room.name": 50,
    "m.room.pinned_events": 25,
    "m.room.power_levels": 50,
    "m.room.retention": 100,
    "m.room.server_acl": 99,
    "m.room.tombstone": 100,
    "m.room.topic": 25,
    "m.space.child": 50
  },
  "events_default": 0,
  "historical": 100,
  "invite": 0,
  "kick": 25,
  "redact": 25,
  "state_default": 50,
  "users": {
    "@matterbridgeppfi:dendrite.matrix.org": 100,
    "@matterbridgeppfi:matrix.org": 100,
    "@Ciblia:matrix.org": 100,
    "@aminda:dendrite.matrix.org": 100,
    "@aminda:matrix.org": 100,
    "@aminda:mozilla.org": 100,
    "@aminda:pikaviestin.fi": 100,
    "@aminda:tedomum.net": 100,
    "@mikaela:tchncs.de": 100,
    "@mkaysi:fedora.im": 100,
    "@mikaela.suomalainen:matrix.org": 100,
    "@aminda:beeper.com": 100,
    "@mikaela.matterbridge:converser.eu": 100,
    "@mikaela.matterbridge:tedomum.net": 100,
    "@aminda.matterbridge:jae.fi": 100,
    "@uduntuntu:kapsi.fi": 100,
    "@uduntuntu:elokapina.fi": 100,
    "@jarska96:beeper.com": 100,
    "@draupnir_beea6411-2aaa-4404-9392-1b428ed302d4:draupnir.midnightthoughts.space": 99,
    "@sthjs:pikaviestin.fi": 50
  },
  "users_default": 0
}
```

Mitä tämä sallii vrt. oletus?

- Historian näkyvyyttä voi vaihtaa olematta ylläpitäjä (PL99 vs PL100)
- PL99 voi antaa porttikieltoja kokonaisille palvelimille (Draupnir/Mjolnir),
  jotta se voidaan tarpeen vaatiessa alentaa.
- Moderaattorit voivat ylentää muita moderaattoriksi (PL50), mutta eivät voi
  alentaa.
  - Erityisen luotetuille voinee antaa 51 tai enemmän?
- Kaikki voivat kutsua muita käyttäjiä huoneeseen (toistaiseksi sitä ei ole
  väärinkäytetty puolueen piirissä, vähemmän työtä ylläpidolle lisätessä
  huoneisiin ja väärinkäyttäjän pitäisi jokatapauksessa päästä koputuksen tai
  sallitun Spacen läpi)
- IRCstä tuttu half-op on PL25 ja voi vaihtaa topicia, kiinnitettyjä viestejä
  tai poistaa viestejä/käyttäjiä huoneesta (ei bannata).
  - Esimerkkikäyttötapaus: henkilö ei halua moderoida banneja, mutta hänen
    tarvitsee muokata topicista päivämääriä tai poiistaa toistettua spammia.
- PL13 voi asettaa pääaliaksen, lisätä/poistaa julkaistuja aliaksia ja
  (tapauksessa Synapse)
  [julkistaa/poistaa huonehakemistosta](https://github.com/vector-im/element-web/issues/13835).
  - Pääalias ei vaikuta `ctrl-k` käyttöön niin paljon.
  - Huoneet löydetään yleensä Spacejen tai Matrix-linkkien kautta (joissa
    määritetään huoneen sisäinen ID aliaksen sijaan).
  - Palvelimen huonehakemistot ovat etenkin suuremmilla palvelimilla laadultaan
    vaihtelevia, niissä oleminen tai puuttuminen ei ole menetys. Ks. Spacet.
  - Tätäkään oikeutta ei tule antaa täysin epäluotetuille käyttäjille.

Voimalliset käyttäjät

- `Ciblia`, `mikaela`, `mkaysi` ja `aminda` ovat Aminda Suomalainen, jonka
  toistinbotilla on myös varmuuden vuoksi oikeuksia.
- `uduntuntu` on tietysti Utu Hopiavuori
- `jarska96` on Jari Nikkinen

_PL100 ei voi alentaa muita PL100-käyttäjiä ja PL100 on oletus huonetta
luodessa. Tämän vuoksi huoneissa saattaa olla myös vanhoja voimallisia
käyttäjiä, esimerkiksi verkosta poistuneilta palvelimilta `disroot.org`,
`privacytools.io`, `feneas.org`, `pirateriot.net`, sekä deaktivoituja tunnuksia,
kuten `the-apothecary.club`._

## Katso myös

- [Amindan blogi: Matrix abuse protection model for community maintainers: security by obscurity](https://www.aminda.eu/blog/english/2021/12/05/matrix-community-abuse-security-by-obscurity.html)
  - käyttää esimerkkinä juuri miten puolueen huoneet on organisoitu.
