#!/usr/bin/env sh

programs=(
"i3"
"mpd"
"ncmpcpp"
"ranger"
"rofi"
"terminator"
"zathura"
)

for d in ${programs[@]}
do
	DEFAULT_DIR="$HOME/.config/$d"
	# default direcotry already exist, remove it first.
	if [ -d $DEFAULT_DIR ]; then
		rm -rvf $DEFAULT_DIR
	fi

	# link to the real config dir
	ln -s $PWD/$d $HOME/.config/$d
done
