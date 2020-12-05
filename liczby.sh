#!/bin/bash
#
function copyright {
	echo ""
	echo "*********************"
	echo "*                   *"
	echo "*To jest skrypt do  *"
	echo "*liczb Mersenna i   *"
	echo "*Fibonacciego.      *"
	echo "*Copyright 2020     *"
	echo "*Julian Wilczek     *"
	echo "*********************"
	echo ""
}
function help {
	echo "SKŁADNIA: $0 <mersenne|fibonacci> <ilość_liczb>"
}
function fibonacci {
#	read -p "Ile liczb Fibonacciego chcesz zobaczyć? " n
	a=0
	b=1
	n=$1
	for (( i=1; i<=n; i++ ));
	do
        	echo "$i liczba Fibonacciego to $a"
        	fibonacci=$((a+b))
        	a=$b
		b=$fibonacci
	done
}
function mersenne {
#	read -p "Ile liczb Mersenna chcesz zobaczyć? " n
	n=$1
	for (( i=1; i<=n; i++ )); do
#	        a=$((2^i))
	        mersenne=$((2 ** i -1))
#       	echo $a
	        echo "$i liczba Mersenna to $mersenne"
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
	else
		help
		copyright
	fi
fi

