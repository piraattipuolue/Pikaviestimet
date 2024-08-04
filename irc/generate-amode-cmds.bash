#!/usr/bin/env bash

# Looping through all the channels
for channel in \#helsinki \#keski-suomi \#pirkanmaa \#ohjelmatyo \#oulu \#puoluevaltuusto \#puoluetoimisto \#pinu_hallitus \#uusimaa \#varsinais-suomi \#akateemisetpiraatit \#piraattinuoret \#kampanjateltta \#sateenkaaripiraatit \#hame \#vaasa \#hallituskokous \#grafiikka \#toiminta \#piraattivpn \#ppfi \#hepihalko \#aaltopiraatit \#kaakko \#mediaseuranta \#savo-karjala \#messi \#piraatit \#suomiareena \#satakunta \#verkkopalvelut \#lappi; do
    # Printing the lines to be copy-pasted to IRC
    # Example output: /quote cs amode #channel +o MI1
    echo "/cs amode $channel $1 $2"
done
