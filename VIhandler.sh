#!/bin/bash
echo $$ > .pid
x=2
type="+"
usr1()
{
	type="+"
}
trap 'usr1' USR1
usr2()
{
	type="*"
}
trap 'usr2' USR2
term()
{
	type="exit"
}
trap 'term' SIGTERM
while true
do
	case $type in
		"+")
		let x=$x+2
		;;
		"*")
		let x=$x*2
		;;
		"exit")
		exit
		;;
	esac
	echo "x=$x"
	sleep 1
done
