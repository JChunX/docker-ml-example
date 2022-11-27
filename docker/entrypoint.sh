#!/bin/bash
echo "entrypoint.sh"
trap "echo TRAPed signal" HUP INT QUIT KILL TERM

# Fix selkies-gstreamer keyboard mapping
if [ "$NOVNC_ENABLE" != "true" ]; then
  sudo xmodmap -e "keycode 94 shift = less less"
fi

# ensure container stays up
tail -F /dev/null