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
    }
  ]
}
```

* `!ElEgwlkMvKtpLTcPXQ:matrix.org` on pääSpace (ei työrauha).

Ks. `työrauha/`, jossa on myös koputtaminen.
