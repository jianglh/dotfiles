#!/bin/sh

PWD=`pwd`

for dotfile in .?*
do
	if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
	then
		ln -sf $PWD/$dotfile ~/$dotfile
	fi
done
