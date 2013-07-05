#!/bin/sh

PWD=`pwd`

for dotfile in .?*
do
	if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
	then
		ln -s $PWD/$dotfile ~/$dotfile
	fi
done
