#!/usr/bin/env bash

# Usage: ./generate-histserv-massdelete.bash msgid1 msgid2 msgid3...

for msgid in "$@"; do
    echo "/msg HistServ DELETE $msgid"
done
