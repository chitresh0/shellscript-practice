#! /bin/bash

function callme() {
	if [ $# -gt 1 ]; then
		secarg=$2
	fi

	echo $secarg
	echo "it is ord$1aa"

	if [ $# -lt 1 ]
	then
		echo "no arg"
		exit
	fi

	if [ $1 == 1 ]
	then
		echo "it is one"
		if [ $secarg == 0 ]; then
			echo "with peer 0"
		else
			echo "with peer 1"
		fi
	fi

	if [ $1 == 2 ]
	then
		echo "it is two"
                if [ $secarg == 0 ]; then
                        echo "with peer 0"
                else
                        echo "with peer 1"
                fi

	fi

}

callme $1 $2
