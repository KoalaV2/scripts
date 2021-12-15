#!/bin/bash

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:15:00 ]] ; then
    /usr/bin/notify-send -u critical "LOW BATTERY" "$BATTINFO" && paplay /usr/share/sounds/freedesktop/stereo/dialog-warning.oga
fi
