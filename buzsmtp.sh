#!/bin/bash

#

tput clear 

echo "###################################################"

echo "###################################################"

echo "################### Welcome #######################"

echo "  ____  _   _ _________  __  __ _____ ____  "

echo " | __ )| | | |__  / ___||  \/  |_   _|  _ \ "

echo " |  _ \| | | | / /\___ \| |\/| | | | | |_) |"

echo " | |_) | |_| |/ /_ ___) | |  | | | | |  __/ "

echo " |____/ \___//____|____/|_|  |_| |_| |_|    "

#

echo

#



ip=$1

port=$2



if [ $# -ne 2 ] ; then

	echo "Run script ./buzsmtp 192.168.36.141 25"

	echo "Run again"

	exit 255

fi



if [[ $1 =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ && $2 = 25 ]] ; then

		echo "You entered a valid IPv4 address...moving on:"

		echo "###################################################"

			ping -c1 $1 >/dev/null 2>&1

			if [ "$?" = 1 ] ; then

				echo "Host is down....exiting  );"

				exit 255

			else 

				echo "Host is up"

				echo

				echo "############## Port-Checking #################"	

				nc -zv -w1 $1 $2

                        fi



	else

		echo "The IPv4 address you entered or Port is wrong...try again:"



	exit 255

fi

#

echo

echo "###################################################"

echo "############## BUZSMTP script options #################"

PS3='Please check option: '

echo

options=("SMTP Information" "VRFY names" "SMTP version" "Quit")

select opt in "${options[@]}"

do

    case $opt in

        "SMTP Information")

		echo

		echo "Current SMTP extensions List" 

		echo "###################################################"

		echo "EHLO $HOSTNAME" | nc -q 1 -n $1 25

		echo "###################################################"

		;;

	"VRFY names")

		echo

		echo "###################################################"

		read -p "Enter a username to test: " vrfy

		echo "VRFY $vrfy" | nc -q 1 -n $1 25

		echo "###################################################"

		;;

	"SMTP version")

		echo

		echo "###################################################"

		nmap -sS -sV $1 -p25 

		echo "###################################################"

		;;

	"Quit")

		break

		;;

	*) echo invalid option;;

esac

done