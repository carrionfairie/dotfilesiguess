#sleep 2s; echo 24°C ☀️ 
echo $(curl 'wttr.in/?format=%tAND%c') | sed 's/AND/ /g; s/+//g'
