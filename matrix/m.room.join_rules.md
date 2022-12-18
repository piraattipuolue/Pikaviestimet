# Tekniset liittymissäännöt työrauhaa vaativille kanaville

## Huoneeseen liittyminen Spaceen kuulumisen perusteella ja koputtamalla

*Vaatii vähintään huoneversion ~~8~~ 9 (`restricted`) tai 10 `knock_restricted`.*

TL;DR `/devtools`, explore room state, `m.room.join_rules`

```json
{
  "join_rule": "knock_restricted",
  "allow": [
    {
      "type": "m.room_membership",
      "room_id": "!ElEgwlkMvKtpLTcPXQ:matrix.org"
    },
    {
      "type": "m.room_membership",
      "room_id": "!ESKEvwumMpSRZTnJOI:pikaviestin.fi"
    },
    {
      "type": "m.room_membership",
      "room_id": "!azROMLeGEMPdbdWnbk:matrix.org"
    },
    {
      "type": "m.room_membership",
      "room_id": "!WDaMZSVinTZRLOTajM:hacklab.fi"
    }
  ]
}
```

* `!ElEgwlkMvKtpLTcPXQ:matrix.org` on pääSpace (ei työrauha) versio 9.
* `!ESKEvwumMpSRZTnJOI:pikaviestin.fi` on pääSpace (ei työrauha) versio 10.
* `!azROMLeGEMPdbdWnbk:matrix.org` - Piraattipuolueen työrauha v9
* `!WDaMZSVinTZRLOTajM:hacklab.fi` - Matrix Suomi (Space) v6


Ks. `työrauha/`, jossa on myös koputtaminen.
