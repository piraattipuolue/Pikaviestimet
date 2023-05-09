<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Tekniset liittymissäännöt työrauhaa vaativille kanaville](#tekniset-liittymiss%C3%A4%C3%A4nn%C3%B6t-ty%C3%B6rauhaa-vaativille-kanaville)
  - [Huoneeseen liittyminen Spaceen kuulumisen perusteella ja koputtamalla](#huoneeseen-liittyminen-spaceen-kuulumisen-perusteella-ja-koputtamalla)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Tekniset liittymissäännöt työrauhaa vaativille kanaville

## Huoneeseen liittyminen Spaceen kuulumisen perusteella ja koputtamalla

_Vaatii vähintään huoneversion ~~8~~ 9 (`restricted`) tai 10 `knock_restricted`._

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

- `!ElEgwlkMvKtpLTcPXQ:matrix.org` on pääSpace (ei työrauha) versio 9.
- `!ESKEvwumMpSRZTnJOI:pikaviestin.fi` on pääSpace (ei työrauha) versio 10.
- `!azROMLeGEMPdbdWnbk:matrix.org` - Piraattipuolueen työrauha v9
- `!WDaMZSVinTZRLOTajM:hacklab.fi` - Matrix Suomi (Space) v6

Ks. `työrauha/`, jossa on myös koputtaminen.
