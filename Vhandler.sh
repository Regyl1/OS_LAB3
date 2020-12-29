#!/bin/bash
type="+"
x=1
(tail -f pipe) |
while true
do
read com
case $com in
	"+")
		type="+"
	;;
	"*")
		type="*"
	;;
	"QUIT")
		killall tail
		exit
	;;
	[0-9]*)
		if [[ $type == '+' ]]
		then
			let x=$x+$com
		else
			let x=$x*$com
		fi
		echo $x
	;;
	*)
		echo "ERROR WRONG COMMAND"
		killall tail
		killall Vgenerator.sh
		exit 1
	;;
esac
done
