#!/usr/bin/env bash

# Generates lines to be copy-pasted to IRC client for mass-managing modes
# in our PUBLIC IRC channels. Note: +h overrides cmode +i.

# WARNING: While changed channel modes stay, changing modes of users
# is temporary until they /cycle or similar. For registered users please
# use the AMODE script.

for channel in \#helsinki \#keski-suomi \#pirkanmaa \#oulu \#puoluevaltuusto \#puoluetoimisto \#pinu_hallitus \#uusimaa \#varsinais-suomi \#akateemisetpiraatit \#piraattinuoret \#kampanjateltta \#sateenkaaripiraatit \#hame \#vaasa \#hallituskokous \#grafiikka \#toiminta \#piraattivpn \#ppfi \#hepihalko \#aaltopiraatit \#kaakko \#mediaseuranta \#savo-karjala \#messi \#piraatit \#suomiareena \#satakunta \#verkkopalvelut
do
    echo "/cs amode $channel $1 $2"
done
