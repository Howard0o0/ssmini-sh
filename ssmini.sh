#!/bin/bash

while true; do

	read -port "listen port:"
	read -passwd "password:"
	echo
	echo "+++++++++++++++++++++++"
	echo "listen port: $port"
	echo "password : $passwd"
	echo "-----------------------"
	echo

	read -r -p "Are You Sure? [Y/n] " input

	case $input in
	[yY][eE][sS] | [yY])
		echo "Yes"
		./test -port $port -passwd $passwd
		exit 0
		;;

	[nN][oO] | [nN])
		echo "restart \n"
		;;
	*)
		echo "Invalid input..."
		;;
	esac
done
