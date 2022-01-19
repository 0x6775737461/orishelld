#!/usr/bin/env bash

get_hd(){
	# '/\/$/!d' - if the directory is mounted on '/' (root)

	# '/[[:alpha:]]//g' - keep only the numbers

	# ([[:digit:]])+[[:alpha:]]/\n&\n/ - find the first storage space and put new line around him

	# ^([0-9]){1,}[[:alpha:]] - take the first numbers with one or more digits

	hd="$(sed -E ' /\/$/!d; s/([[:digit:]])+[[:alpha:]]/\n&\n/' <(df -h) | \
		grep -Eo -m 1 '^([0-9]){1,}[[:alpha:]]')"
}
