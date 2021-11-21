# Tekniset liittymissäännöt työrauhaa vaativille kanaville

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
