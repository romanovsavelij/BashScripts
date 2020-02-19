#!/bin/bash

recursive_ls() {
	tput bold
	cur_path=$( pwd )
	echo "directory: $cur_path" 
	tput sgr0

	local files=$( ls )
	for file in $files
	do
		if [ -d $file ]
		then
			cd $file
			recursive_ls
			cd ..
		fi
	done
}

recursive_ls