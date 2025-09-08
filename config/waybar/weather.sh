echo $(curl -s 'wttr.in/?format=%t%c\n' | sed 's/+//g; s/C/C /g;')
