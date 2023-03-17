<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Tekniset liittymissäännöt työrauhaa vaativille kanaville](#tekniset-liittymiss%C3%A4%C3%A4nn%C3%B6t-ty%C3%B6rauhaa-vaativille-kanaville)
  - [Huoneeseen liittyminen Spaceen kuulumisen perusteella ja koputtamalla](#huoneeseen-liittyminen-spaceen-kuulumisen-perusteella-ja-koputtamalla)
  - [Koputtamisen salliminen](#koputtamisen-salliminen)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Tekniset liittymissäännöt työrauhaa vaativille kanaville

## Huoneeseen liittyminen Spaceen kuulumisen perusteella ja koputtamalla

*Vaatii vähintään huoneversion ~~8~~ 9 (`restricted`) tai 10 `knock_restricted`.*

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
        "join_rule": "knock_restricted"
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
