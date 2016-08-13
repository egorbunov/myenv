#! /bin/bash

if [ ! "$#" -eq "1" ]; then
    echo "USAGE: ./setwall.sh path/to/wallpaper.ext"
    exit 1
fi

WALLPATH="$1"

if [ ! -e "$WALLPATH" ]; then
    echo "Specified wallpaper file "${WALLPATH}" does not exist"
    exit 1
fi

I3CONFIG="$(echo ~/.config/i3/config)"
LINENUM=$(grep -n "feh" "$I3CONFIG" | cut -d : -f 1)
CMD="feh --bg-scale ""$WALLPATH"
NEWLINE="exec --no-startup-id "${CMD}
if [ -z "$LINENUM" ]; then
    echo "#Wallpaper" >> "$I3CONFIG"
    echo "$NEWLINE" >> "$I3CONFIG"
else
    sed -i "${LINENUM}s~.*~$NEWLINE~" ${I3CONFIG}
fi

${CMD}
i3-msg reload
i3-msg restart
