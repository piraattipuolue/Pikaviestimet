# Tekniset liittymissäännöt työrauhaa vaativille kanaville

## Huoneeseen liittyminen avaruuteen kuulumisen perusteella

TL;DR `/devtools`, explore room state, `m.room.join_rules`

```json
{
        "allow": [
                {
                        "room_id": "!oHIvaRnuEEIDavQVRJ:matrix.org",
                        "type": "m.room_membership"
                },
                {
                        "room_id": "!azROMLeGEMPdbdWnbk:matrix.org",
                        "type": "m.room_membership"
                }
        ],
        "join_rule": "restricted"
}
```

* `!oHIvaRnuEEIDavQVRJ:matrix.org` - Työrauha-space versio 6 (taaksepäin yhteensopivuuden vuoksi)
* `!azROMLeGEMPdbdWnbk:matrix.org` - Työrauha-space versio 9 (tätä pitäisi oikeasti käyttää)

## Koputtamisen salliminen

*Vaatii vähintään huoneversio 7.*

*Kirjoitusaikana Elementit [Android](https://github.com/vector-im/element-android/issues/3875), [iOS](https://github.com/vector-im/element-ios/issues/4731) ja [Web/Desktop](https://github.com/vector-im/element-web/issues/18655) eivät tue tätä.*

TL;DR `/devtools`, explore room state, `m.room.join_rules`:

Jotta huoneeseen/spaceen pääsee koputtamalla (voi pyytää kutsua)

```
{
        "join_rule": "knock"
}
```
