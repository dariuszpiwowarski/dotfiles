#!/usr/bin/bash

dir=$(pwd)
for file in $pwd.*rc
do
	if [[ -f $file ]]; then
		ln -s $dir/$file ~/$file
	fi
done
