#!/bin/bash

echo $$ > .pid
com='+'
x=1
usr1()
{
com='+'
}
trap 'usr1' USR1
usr2()
{
com='*'
}
trap 'usr2' USR2
sigterm()
{
com='sigterm'
}
trap 'sigterm' sigterm
while true
do
case $com in
	'+')
	let x=$x+2
	echo "x:$x"
	;;
	'*')
	let x=$x*2
	echo "x:$x"
	;;
	'sigterm')
	exit
	;;
esac
sleep 1
done
