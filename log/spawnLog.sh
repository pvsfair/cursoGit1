#!/bin/sh
for f in {0..100}
do
	filename=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
	filecontent=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
	echo $filecontent > "${filename}.log"
done
