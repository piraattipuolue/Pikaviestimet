#!/usr/bin/env bash

# Generates lines to be copy-pasted to IRC client for mass adjusting modes
# in our PUBLIC IRC channels through OPER OVERRIDE / SAMODE.

# Modes: refer to https://github.com/ergochat/ergo/blob/master/docs/MANUAL.md#modes

# Usage e.g.: ./generate-oper-override-mode.bash +q yourusername

# This should be the same list as the amode script which is preferable alongside
# the normal mode script
for channel in \#helsinki \#keski-suomi \#pirkanmaa \#oulu \#puoluevaltuusto \#puoluetoimisto \#pinu_hallitus \#uusimaa \#varsinais-suomi \#akateemisetpiraatit \#piraattinuoret \#kampanjateltta \#sateenkaaripiraatit \#hame \#vaasa \#hallituskokous \#grafiikka \#toiminta \#piraattivpn \#ppfi \#hepihalko \#aaltopiraatit \#kaakko \#mediaseuranta \#savo-karjala \#messi \#piraatit \#suomiareena \#satakunta \#verkkopalvelut
do
    echo "/quote samode $channel $1 $2"
done
