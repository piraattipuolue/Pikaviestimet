#!/usr/bin/env bash

# Generates lines to be copy-pasted to IRC client for mass-managing modes
# in our PUBLIC IRC channels. Note: +h overrides cmode +i.

# Modes: refer to https://github.com/ergochat/ergo/blob/master/docs/MANUAL.md#channel-prefixes

# Usage: ./generate-amode-cmds.bash username <+|->mode

# public channels where matterbridge is
# excluded: #globalpirates (we just provide the bridge), oper room x2 (not solely ours either)
# included: #messi (if they have power in our rooms, hopefully they are also an activist)
for channel in \#helsinki \#keski-suomi \#pirkanmaa \#oulu \#puoluevaltuusto \#puoluetoimisto \#pinu_hallitus \#uusimaa \#varsinais-suomi \#akateemisetpiraatit \#piraattinuoret \#kampanjateltta \#sateenkaaripiraatit \#hame \#vaasa \#hallituskokous \#grafiikka \#toiminta \#piraattivpn \#ppfi \#hepihalko \#aaltopiraatit \#kaakko \#mediaseuranta \#savo-karjala \#messi \#piraatit \#suomiareena \#satakunta \#verkkopalvelut
do
    echo "/cs amode $channel $1 $2"
done
