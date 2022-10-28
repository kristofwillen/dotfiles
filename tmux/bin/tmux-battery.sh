#!/bin/bash

# For colour codes, see: https://www.ditig.com/256-colors-cheat-sheet
BATTERY=$(pmset -g batt|tail -n1|awk '{print $3}'|cut -d'%' -f1)
if [[ $BATTERY -lt 20 ]]; then
	export BGCOLOR='colour160' # red
	export BICON=''
elif [[ $BATTERY -lt 40 ]]; then
	export BGCOLOR='colour202' # orange
	export BICON=''
elif [[ $BATTERY -lt 60 ]]; then	
	export BGCOLOR='colour178' # yellow
	export BICON=''
elif [[ $BATTERY -lt 80 ]]; then 
	export BGCOLOR='colour51'  # blue
	export BICON=''
else
	export BGCOLOR='colour40'  # green 
	export BICON=''
fi

echo "#[fg=$BGCOLOR]#[fg=black]#[bg=$BGCOLOR]$BICON [ ${BATTERY}% ]"

