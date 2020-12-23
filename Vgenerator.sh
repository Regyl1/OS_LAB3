#!/bin/bash

while true
do
read line
if [[ $line == '*' ]]
then
echo '*' > pipe
else
echo $line > pipe
fi
if [[ $line == "QUIT" ]]
	then
	echo "standart quit"
	exit
	fi
done
