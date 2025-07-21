#!/bin/bash

i3status --config ~/.config/i3status/config | while :
do
    read line
    LG=$(~/utils/xkblayout-state/xkblayout-state print "%n")
    echo "LG: $LG | $line" || exit 1
done
