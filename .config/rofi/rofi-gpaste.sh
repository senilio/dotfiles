#!/usr/bin/env bash
#
#   Use rofi to select/remove entries from gpaste.
#
#   Requirements:
#     rofi, gpaste
#
#   Notes:
#     * "Return" will activate the highlighted item.
#     * "Ctrl+x" will remove the highlighted.
#

# Basic rofi launch command. Additional option can also be provided
# when calling this script.
LAUNCHER="rofi -dmenu -i -p gpaste -kb-custom-1 Ctrl+x $@"

line=$(gpaste-client --oneline | $LAUNCHER)
exit_code=$?

index=$(echo $line | cut -d ':' -f1)

if ! [[ $index =~ ^[0-9]+$ ]]; then
    exit 0
fi

if [ $exit_code -eq 0 ]; then
    gpaste-client select $index
elif [ $exit_code -eq 10 ]; then
    gpaste-client delete $index
fi
