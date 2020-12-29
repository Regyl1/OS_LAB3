#!/bin/bash

while (true)
do
read com
case $com in
	"QUIT")
		echo "Planned quit"
		echo "QUIT" > pipe
		exit 0
	;;
	"*")
		echo "*" > pipe
	;;
	*)
		echo $com > pipe
	;;
esac
done
