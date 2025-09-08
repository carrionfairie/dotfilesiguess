ss="$(grim - | sed 's/\\/\\\\/g;s/%/%%/g;s/\x00/\\x00/g')"

crop=$(slurp)
array=($(echo $crop | tr " " "\n"))
offset=($(echo ${array[0]} | tr "," "\n"))

printf "$ss" | magick - -crop "${array[1]}+${offset[0]}+${offset[1]}" - | wl-copy
