#!/bin/bash

com='+'
x=1
(tail -f pipe) |
while true
do
read line
case $line in
	"QUIT")
	killall tail
	exit
	;;
	'+')
	com='+'
	;;
	'*')
	com='*'
	;;
	[0-9]*)
	if [[ $com == '+' ]]
		then
		let x=$x+$line
		else
		let x=$x*$line
	fi
	echo "x:$x"
	;;
	*)
	echo "ERROR: WRONG PARAMETER"
	killall tail
	killall Vgenerator.sh
	exit
	;;
esac
done
