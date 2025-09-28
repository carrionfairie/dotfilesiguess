#!/usr/bin/bash
#sleep 2s; echo 24°C ☀️

msg=$(echo $(curl 'wttr.in/?format=%tAND%c') | sed 's/AND/ /g; s/+//g')

if [[ $msg == *"Unknown location"* ]]; then
  exit
fi

echo "$msg"
