#!/bin/bash

function copyright {
	echo ""
	echo "*********************"
	echo "*                   *"
	echo "*This script is to  *"
	echo "*series and         *"
	echo "*numbers.           *"
	echo "*Copyright 2020     *"
	echo "*Pro-Haker          *"
	echo "*********************"
	echo ""
}
function help {
	echo "SYNTAX: $0 <mersenne|fibonacci|palindromic|lucas> <number_quantity|number>"
}
function fibonacci {
#	read -p "How much Fibonacci's numbers you want to see?" n
	a=0
	b=1
	n=$1
	for (( i=1; i<=n; i++ ));
	do
        	echo "$i Fibonacci's number is $a"
        	fibonacci=$((a+b))
        	a=$b
		b=$fibonacci
	done
}
function mersenne {
#	read -p "How much Mersenne's numbers you want to see? " n
	n=$1
	for (( i=1; i<=n; i++ )); do
#	        a=$((2^i))
	        mersenne=$((2 ** i -1))
#       	echo $a
	        echo "$i Mersenne's number is $mersenne"
done
}

function palindromic_number {
	n=$1
	if [[ $(rev <<< "$n") == "$n" ]]; then
		echo "Number is palindromic number"
	else
		echo "Number isn't palindromic number"
	fi
}

function lucas {
	a=2
	b=1
	n=$1
	for (( i=1; i<=n; i++ ));
	do
        	echo "$i Lucas's number is $a"
        	lucas=$((a+b))
        	a=$b
		b=$lucas
	done
}

if [ $# -lt 2 ]; then
	help
	copyright
else
	if [ $1 == "fibonacci" ]; then
		fibonacci $2
		copyright
	elif [ $1 == "mersenne" ]; then
		mersenne $2
		copyright
	elif [ $1 == "palindromic" ]; then
		palindromic_number $2
		copyright
	elif [ $1 == "lucas" ]; then
		lucas $2
		copyright
	else
		help
		copyright
	fi
fi

