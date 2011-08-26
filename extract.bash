#!/usr/bin/env bash
# extract: Extracts an archive based on type.
# Author: Emmanuel Rouat <no-email>
# See: http://tldp.org/LDP/abs/html/sample-bashrc.html

if [ -f $1 ]; then
	case $1 in
		*.tar.bz2) tar xvjf $1;;
		*.tar.gz) tar xvzf $1;;
		*.bz2) bunzip2 $1;;
		*.rar) unrar x $1;;
		*.gz) gunzip $1;;
		*.tar) tar xvf $1;;
		*.tbz2) tar xvjf $1;;
		*.tgz) tar xvzf $1;;
		*.zip) unzip $1;;
		*.Z) uncompress $1;;
		*.7z) 7z x $1;;
		*) echo "'$1' cannot be extracted";;
	esac
else
	echo "'$1' is not a valid file"
fi
