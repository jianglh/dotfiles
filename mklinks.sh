#!/bin/sh

PWD=`pwd`
backup='backup'

mkdir -p $backup

for dotfile in .?*
do
	if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
	then
		mv ~/$dotfile $PWD/$backup/
		ln -sf $PWD/$dotfile ~/$dotfile
	fi
done
